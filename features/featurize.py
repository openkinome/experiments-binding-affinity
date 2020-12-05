"""
Parameterize and execute a notebook
"""
import argparse
from pathlib import Path
from string import ascii_lowercase
from runpy import run_path

import yaml
import papermill as pm


IDENTIFIER_MSG = (
    "Identifier must follow this format: `XXX_unique-name`, "
    "where `XXX` is a 3-digit number and `unique-name` is "
    "all lowercase and can only use dashes."
)


def _check_identifier(value):

    parts = value.split("_")
    if len(parts) != 2:
        raise argparse.ArgumentTypeError(IDENTIFIER_MSG)
    number, name = parts
    if len(number) != 3 or not number.isnumeric():
        raise argparse.ArgumentTypeError(IDENTIFIER_MSG)
    if name.lower() != name:
        raise argparse.ArgumentTypeError(IDENTIFIER_MSG)
    if any(c not in ascii_lowercase + "-" for c in name):
        raise argparse.ArgumentTypeError(IDENTIFIER_MSG)

    return value


def _parse_parameters(path):
    if path.endswith((".yml", ".yaml")):
        with open(path) as f:
            parameters = yaml.safe_load(f.read())
    elif path.endswith(".py"):
        parameters = {
            name: value
            for name, value in run_path(path).items()
            if name.upper() == name and not name.startswith("_")
        }
    else:
        raise argparse.ArgumentTypeError(
            "Parameters file format must be YAML (or a Python script, but not recommended)"
        )
    return parameters


def parse_cli():
    p = argparse.ArgumentParser()
    p.add_argument("identifier", type=_check_identifier, help=IDENTIFIER_MSG)
    p.add_argument("template", help="Input notebook template")
    p.add_argument("parameters", help="YAML file", type=_parse_parameters)

    return p.parse_args()


def main():
    args = parse_cli()
    nbin = Path(args.template)
    nbout = nbin.parent / args.identifier / nbin.name.replace("-template", "")
    nbout.parent.mkdir(exist_ok=True, parents=True)
    args.parameters["HERE"] = str(nbout.parent.resolve())
    pm.execute_notebook(nbin, nbout, args.parameters)


if __name__ == "__main__":
    main()

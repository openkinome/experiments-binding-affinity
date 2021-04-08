"""
Parameterize and execute a notebook
"""
import argparse
from pathlib import Path
from runpy import run_path

from ruamel import yaml
import papermill as pm


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
    p.add_argument("template", help="Input notebook template")
    p.add_argument(
        "parameters", help="YAML file. Name will be used to create the output directory."
    )
    p.add_argument("--overwrite", help="Ignore existing output directory", action="store_true")

    return p.parse_args()


def main():
    args = parse_cli()
    nbin = Path(args.template)
    parameters = _parse_parameters(args.parameters)
    nbout = nbin.parent / Path(args.parameters).stem / nbin.name.replace("-template", "")
    nbout.parent.mkdir(exist_ok=args.overwrite, parents=True)
    parameters["HERE"] = str(nbout.parent.resolve())
    pm.execute_notebook(str(nbin), str(nbout), parameters)


if __name__ == "__main__":
    main()

#!/bin/bash

set -euo pipefail

echo "Models"

echo "Ligand only"

echo "Running model for '001_example-ligand-only-morgan1024-subset'"
python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/001_example-ligand-only-morgan1024-subset.py --overwrite

echo "Running model for '001_example-ligand-only-smiles-subset.py'"
python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/001_example-ligand-only-smiles-subset.py --overwrite

echo "Running model for '001_example-ligand-only-graph-subset'"
python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/001_example-ligand-only-graph-subset.py --overwrite

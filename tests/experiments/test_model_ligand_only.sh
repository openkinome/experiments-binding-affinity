#!/bin/bash

set -euo pipefail

echo "Model"

echo "Ligand only"

echo "Running model for 'ligand-only-graph-subsample'"
python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/001_example-ligand-only-graph-subsample.py --overwrite


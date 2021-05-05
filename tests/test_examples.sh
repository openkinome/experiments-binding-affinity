#!/bin/bash

set -euo pipefail

echo "Running featurization for 'example-graph-chembl28-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-graph-chembl28-1k-subsample.py --overwrite

echo "Running featurization for 'example-ligand-only-chembl28-morgan512-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-ligand-only-chembl28-morgan512-1k-subsample.py --overwrite

echo "Running featurization for 'example-ligand-only-chembl28-ohesmiles-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-ligand-only-chembl28-ohesmiles-1k-subsample.py --overwrite



echo "Running training for '000_example-ligand-only-chembl28-subset'"
python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/000_example-ligand-only-chembl28-subset.py --overwrite

echo "Running training for '000_talias-ligand-only-chembl28-subset'"
python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/000_talias-ligand-only-chembl28-subset.py --overwrite

echo "Running training for '000_example-graph-chembl28-1k-subsample.py'"
python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/000_example-graph-chembl28-1k-subsample.py --overwrite
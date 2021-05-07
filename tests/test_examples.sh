#!/bin/bash

set -euo pipefail

echo "Featurization"
echo "Ligand only"

echo "Running featurization for 'example-graph-chembl28-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-graph-chembl28-1k-subsample.py --overwrite

echo "Running featurization for 'example-ligand-only-chembl28-morgan512-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-ligand-only-chembl28-morgan512-1k-subsample.py --overwrite

echo "Running featurization for 'example-ligand-only-chembl28-ohesmiles-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-ligand-only-chembl28-ohesmiles-1k-subsample.py --overwrite

echo "Running featurization for 'example-ligand-only-chembl28-morgan1024-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-ligand-only-chembl28-morgan1024-1k-subsample.py --overwrite

echo "Kinase informed"

echo "Running featurization for 'example-chembl28-morgan512-hash-1k-subsample.py'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-morgan512-hash-1k-subsample.py --overwrite

echo "Running featurization for 'example-chembl28-morgan512-composition-1k-subsample.py'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-morgan512-composition-1k-subsample.py --overwrite

echo "Running featurization for 'example-chembl28-onehotsmiles-sequence-1k-subsample.py'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-onehotsmiles-sequence-1k-subsample.py --overwrite

echo "Model training"

echo "Running training for '000_example-ligand-only-chembl28-subset'"
python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/000_example-ligand-only-chembl28-subset.py --overwrite

#echo "Running training for '000_example-graph-chembl28-1k-subsample.py'"
#python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/000_example-graph-chembl28-1k-subsample.py --overwrite
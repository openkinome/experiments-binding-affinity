#!/bin/bash

set -euo pipefail

echo "Featurization"

echo "Kinase informed"

echo "Running featurization for 'example-chembl28-morgan1024-hash-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-morgan1024-hash-1k-subsample.py --overwrite

echo "Running featurization for 'example-chembl28-morgan1024-composition-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-morgan1024-composition-1k-subsample.py --overwrite

echo "Running featurization for 'example-chembl28-smiles-sequence-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-smiles-sequence-1k-subsample.py --overwrite



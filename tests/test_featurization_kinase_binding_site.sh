#!/bin/bash

set -euo pipefail

echo "Featurization"
echo "Kinase informed"

echo "Binding site"

echo "Running featurization for 'example-chembl28-morgan1024-klifscomposition-1k-subsample.py'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-morgan1024-klifscomposition-1k-subsample.py --overwrite

echo "Running featurization for 'example-chembl28-smiles-klifssequence-1k-subsample.py'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-smiles-klifssequence-1k-subsample.py --overwrite

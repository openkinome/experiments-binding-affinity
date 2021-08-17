#!/bin/bash

set -euo pipefail

echo "Featurization"

echo "Kinase informed"

echo "Running featurization for 'kinase-informed-morgan1024-hash-subsample'"
python run_notebook.py features/featurize-template.ipynb features/kinase-informed-morgan1024-hash-subsample.py --overwrite

echo "Running featurization for 'kinase-informed-morgan1024-composition-subsample'"
python run_notebook.py features/featurize-template.ipynb features/kinase-informed-morgan1024-composition-subsample.py --overwrite

echo "Running featurization for 'kinase-informed-smiles-sequence-subsample'"
python run_notebook.py features/featurize-template.ipynb features/kinase-informed-smiles-sequence-subsample.py --overwrite



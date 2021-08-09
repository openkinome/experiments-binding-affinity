#!/bin/bash

set -euo pipefail

echo "Featurization"

echo "Ligand only"

echo "Running featurization for 'ligand-only-morgan1024-subsample'"
python run_notebook.py features/featurize-template.ipynb features/ligand-only-morgan1024-subsample.py --overwrite


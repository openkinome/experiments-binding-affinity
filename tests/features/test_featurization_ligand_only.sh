#!/bin/bash

set -euo pipefail

echo "Featurization"

echo "Ligand only"

echo "Running featurization for 'ligand-only-graph-subsample'"
python run_notebook.py features/featurize-template.ipynb features/ligand-only-graph-subsample.py --overwrite


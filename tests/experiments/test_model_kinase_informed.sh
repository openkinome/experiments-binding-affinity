#!/bin/bash

set -euo pipefail

echo "Models"

echo "Kinase informed"

echo "Running model for '002_example-kinase-informed-morgan-hash-subset'"
python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/002_example-kinase-informed-morgan-hash-subset.py --overwrite

echo "Running model for '002_example-kinase-informed-morgan-composition-subset'"
python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/002_example-kinase-informed-morgan-composition-subset.py --overwrite

# echo "Running model for '002_example-kinase-informed-smiles-sequence-subset'"
# python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/002_example-kinase-informed-smiles-sequence-subset.py --overwrite
# fix with input estimate in kinoml 

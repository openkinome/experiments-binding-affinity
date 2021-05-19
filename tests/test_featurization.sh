#!/bin/bash

set -euo pipefail

echo "Featurization"
echo "Ligand only"

echo "Running featurization for 'example-ligand-only-chembl28-morgan1024-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-ligand-only-chembl28-morgan1024-1k-subsample.py --overwrite

echo "Running featurization for 'example-ligand-only-chembl28-ohesmiles-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-ligand-only-chembl28-ohesmiles-1k-subsample.py --overwrite

echo "Running featurization for 'example-ligand-only-chembl28-graph-1k-subsample'"
python run_notebook.py features/featurize-template.ipynb features/example-ligand-only-chembl28-graph-1k-subsample.py --overwrite

echo "Kinase informed"

echo "Binding site"

echo "Running featurization for 'example-chembl28-morgan1024-klifscomposition-1k-subsample.py'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-morgan1024-klifscomposition-1k-subsample.py --overwrite

echo "Running featurization for 'example-chembl28-smiles-klifssequence-1k-subsample.py'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-smiles-klifssequence-1k-subsample.py --overwrite

echo "Full sequence"

echo "Running featurization for 'example-chembl28-morgan1024-hash-1k-subsample.py'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-morgan1024-hash-1k-subsample.py --overwrite

echo "Running featurization for 'example-chembl28-morgan1024-composition-1k-subsample.py'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-morgan1024-composition-1k-subsample.py --overwrite

echo "Running featurization for 'example-chembl28-smiles-sequence-1k-subsample.py'"
python run_notebook.py features/featurize-template.ipynb features/example-chembl28-smiles-sequence-1k-subsample.py --overwrite

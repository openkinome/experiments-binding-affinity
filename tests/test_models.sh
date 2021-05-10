#!/bin/bash

set -euo pipefail

echo "Model training"

echo "Ligand only"

echo "Running training for 'ligand-only-morgan1024-chembl28-subset'"
# python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/ligand-only-morgan1024-chembl28-subset.py --overwrite

echo "Running training for 'ligand-only-graph-chembl28-subset'"
# python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/ligand-only-graph-chembl28-subset.py --overwrite

echo "Running training for 'ligand-only-onehotsmiles-chembl28-subset'"
# python run_notebook.py experiments/torch-train-test-debug-template.ipynb experiments/ligand-only-onehotsmiles-chembl28-subset.py --overwrite


echo "Kinase informed"

echo "Running training for 'ligand-morgan1024-kinase-hash-chembl28-subset'"
# python run_notebook.py experiments/torch-train-test-debug-kinase-informed.ipynb experiments/ligand-morgan1024-kinase-hash-chembl28-subset.py --overwrite

echo "Running training for 'ligand-morgan1024-kinase-composition-chembl28-subset'"
# python run_notebook.py experiments/torch-train-test-debug-kinase-informed.ipynb experiments/ligand-morgan1024-kinase-composition-chembl28-subset.py --overwrite

echo "Running training for 'ligand-smiles-kinase-sequence-chembl28-subset'"
# python run_notebook.py experiments/torch-train-test-debug-kinase-informed.ipynb experiments/ligand-smiles-kinase-sequence-chembl28-subset.py --overwrite

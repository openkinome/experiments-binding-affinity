# KinoML notebooks

These repository contains detailed execution instructions for the notebooks used in our structure-informed machine learning experiments. We put special emphasis in reproducibility of results by carefully specifying every aspect of the running environment.

**Some history hygiene details**

- This repository should only contain the input code. This extends to notebooks themselves: clear all outputs before commiting!
- Outputs are sync'ed to [Weights & Biases](https://wandb.com). When running locally, outputs should be saved in a folder named `_output/` relative to the running notebook. This includes the run notebook itself, with (updated) output cells.

## Included studies

_Note: Each directory contains one more `README.md` you can check for additional details. The details of each run are encoded in a YAML file_.

- `001-ligand-based`: Baseline models for the rest of the studies. Models are trained with ligand information, exclusively.
- `002-kinase-informed`: Include _some_ kinase information, without structural details.

## Philosophy

We split an _experiment_ in four stages:

1. Data intake. This involves taking the raw data (e.g. as provided in a publication, dataset or through a collaborator) and creating a `DatasetProvider` adapter. This stage _should not_ happen in a notebook, but as part of the KinoML library.
2. Featurization. One or more `DatasetProvider` objects are converted into a tensorial representations exported as NumPy arrays. This process should _also_ export the measurement type metadata: observation model mathematical expression, dynamic range, loss adapters.
3. Training. Takes a collection of tensors & measurement types, one model and a set of hyperparameters, and produces a collection of _k_-models (one per _k_-fold). Contextual metadata includes loss data, validation scores, data splits. Only training and validation sets are used here, but indices to test set are available for later stages if needed.
4. Evaluation. Using the models from step 3, produce reports of performance of a test set. Test set does not have to be part of the same collection used in training; it can be a different collection entirely, as long as the featurized tensors are compatible (e.g. test ChEMBL data on PKIS2). Outputs include test scores.

Since featurized vectors can be reused across models, we do not implement a linear hierarchy that implies such a dependency. Instead, we use metadata to annotate each artifact and identify whether a certain stage is compatible with another, across experiments.

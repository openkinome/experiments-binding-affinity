# KinoML notebooks

These repository contains detailed execution instructions for the notebooks used in our structure-informed machine learning experiments. We put special emphasis in reproducibility of results by carefully specifying every aspect of the running environment.

__Some history hygiene details__

* This repository should only contain the input code. This extends to notebooks themselves: clear all outputs before commiting!
* Outputs are sync'ed to [Weights & Biases](https://wandb.com). When running locally, outputs should be saved in a folder named `_output/` relative to the running notebook. This includes the run notebook itself, with (updated) output cells.

## Included studies

_Note: Each directory contains one more `README.md` you can check for additional details_.

* `ligand-based`: Baseline models for the rest of the studies. Models are trained with ligand information, exclusively.
* `kinase-informed`: Include _some_ kinase information, without structural details.
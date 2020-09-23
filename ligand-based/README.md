# Ligand-based studies

Experiments where the details learned are mainly provided by ligand information. No kinase information is provided, so we train one model for each kinase.


## Datasets

* PKIS2
* ChEMBL v27


## Experiment matrix

The dimensions we are traversing are:

* Featurization schemes
* Model architectures
* Evaluation strategies

Analysis is done with the following metrics:

* Loss: MSE, MAE, RMSE (coupled with measurement-dependent observation models)
* R2
* Running time


### Featurization schemes applied

* Morgan fingerprints
* One-hot encoded SMILES strings
* Graph representations with annotated nodes


### Architectures

* XGB
* DNN
* CNN
* GCN


## Directory structure

Paths are composed with the following syntax. Having featurization first allows us to reuse featurized datasets across different models.

```
<featurization>/<model>/<optionallevels>
```
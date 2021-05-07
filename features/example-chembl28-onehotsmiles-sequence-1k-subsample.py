# You can only use UPPERCASE variables for the names
# Values can ONLY be strings, numbers, lists (not tuples!) or dicts

DATASET_CLS = "kinoml.datasets.chembl.ChEMBLDatasetProvider"
DATASET_KWARGS = {
    "path_or_url": "https://github.com/openkinome/kinodata/releases/download/v0.2/activities-chembl28-sample100_v0.2.zip",
}

PIPELINES = {
    "ligand": [
        ["kinoml.features.ligand.SmilesToLigandFeaturizer", {"style": "rdkit"}],
        ["kinoml.features.ligand.OneHotSMILESFeaturizer", {}],
        ["kinoml.features.core.PadFeaturizer", {"shape": "auto"}],
    ],
    "kinase": [
        ["kinoml.features.protein.OneHotEncodedSequenceFeaturizer", {}],
    ]

}
PIPELINES_AGG = "kinoml.features.core.TupleOfArrays"
PIPELINE_AGG_KWARGS = {}

FEATURIZE_KWARGS = {"processes": 1}

GROUPS = [
    [
        "kinoml.datasets.groups.CallableGrouper",
        {"function": "lambda measurement: type(measurement).__name__"},
    ],  # by measurement type
]

TRAIN_TEST_VAL_KWARGS = {"idx_train": 0.8, "idx_test": 0.1, "idx_val": 0.1}

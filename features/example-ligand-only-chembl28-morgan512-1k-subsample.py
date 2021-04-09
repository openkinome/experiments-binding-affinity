# You can only use UPPERCASE variables for the names
# Values can ONLY be strings, numbers, lists (not tuples!) or dicts

DATASET_CLS = "kinoml.datasets.chembl.ChEMBLDatasetProvider"
DATASET_KWARGS = {
    "filename": "https://github.com/openkinome/kinodata/releases/download/v0.2/activities-chembl27_v0.2.zip",
    "sample": 1000,
}

PIPELINES = {
    "ligand": [
        ["kinoml.features.ligand.SmilesToLigandFeaturizer", {}],
        ["kinoml.features.ligand.MorganFingerprintFeaturizer", {"nbits": 512, "radius": 2}],
    ]
}
PIPELINES_AGG = "kinoml.features.core.Concatenated"
PIPELINES_AGG_KWARGS = {}

FEATURIZE_KWARGS = {"processes": 1}

GROUPS = [
    [
        "kinoml.datasets.groups.CallableGrouper",
        {"function": "lambda measurement: measurement.system.protein.name"},
    ],  # by kinase
    [
        "kinoml.datasets.groups.CallableGrouper",
        {"function": "lambda measurement: type(measurement).__name__"},
    ],  # by measurement type
]

TRAIN_TEST_VAL_KWARGS = {"idx_train": 0.8, "idx_test": 0.1, "idx_val": 0.1}
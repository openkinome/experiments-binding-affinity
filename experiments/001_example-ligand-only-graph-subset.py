# ----
# This input file is designed for experiments/torch-train-test-debug-template.ipynb
# ----


# DATA -- Glob paths must be relative to the root of the repository: REPO / features
PARQUET_FILES = [
    "ligand-only-graph-subsample/_output/ligand__SmilesToLigandFeaturizer__GraphLigandFeaturizer/ChEMBLDatasetProvider/*.parquet",
]

# Model -- specified with the full import path to the class object
MODEL_CLS = "kinoml.ml.torch_geometric_models.GraphConvolutionNeuralNetwork"
MODEL_KWARGS = {}


# OPTIMIZER
OPTIMIZER = "torch.optim.Adam"
OPTIMIZER_KWARGS = {"lr": 0.001, "eps": 1e-7, "betas": [0.9, 0.999]}

# LOSS FUNCTION
LOSS = "torch.nn.MSELoss"
LOSS_KWARGS = {}

# TRAINING
MAX_EPOCHS = 50
VALIDATION = True
EARLY_STOPPING_KWARGS = {}

# DATALOADER
DATALOADER_CLS = "torch_geometric.data.DataLoader"
BATCH_SIZE = 64
TRAIN_TEST_SPLIT = 0.2
SHUFFLE_SPLITS = True
COLLATE_FN = None

# Plot bootstrapping
N_BOOTSTRAPS = 1
BOOTSTRAP_SAMPLE_RATIO = 1

# Output
VERBOSE = False
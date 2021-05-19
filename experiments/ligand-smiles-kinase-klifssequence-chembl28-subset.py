# ----
# This input file is designed for experiments/torch-train-test-debug-template.ipynb
# ----


# DATA -- Glob paths must be relative to the root of the repository: REPO / features
NPZ_FILES = [
    "example-chembl28-smiles-sequence-1k-subsample/_output/.../ChEMBLDatasetProvider/*.npz",
]

# Model -- specified with the full import path to the class object
MODEL_CLS = "kinoml.ml.torch_models.ConvolutionNeuralNetworkRegressionKinaseInformed"
MODEL_KWARGS = {"hidden_shape": 350}  # input_shape is defined dynamically during training
WITH_OBSERVATION_MODEL = True

# Adam
LEARNING_RATE = 0.001
EPSILON = 1e-7
BETAS = [0.9, 0.999]

# Trainer
MAX_EPOCHS = 50
N_SPLITS = 5
SHUFFLE_FOLDS = False
VALIDATION = False  # TODO: VALIDATION=True is not implemented yet!
MIN_ITEMS_PER_DATASET = 10  # skip datasets if len(data) < N

# Bootstrapping
N_BOOTSTRAPS = 1
BOOTSTRAP_SAMPLE_RATIO = 1

# Output
VERBOSE = False
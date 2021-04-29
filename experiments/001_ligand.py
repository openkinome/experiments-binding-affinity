# DATA -- Glob paths must be relative to the root of the repository: REPO / features
NPZ_FILES = [
    "ligand-only-morgan1024/_output/ligand__SmilesToLigandFeaturizer_style=rdkit__MorganFingerprintFeaturizer_nbits=1024_radius=2/ChEMBLDatasetProvider/*.npz"
]

# Model -- specified with the full import path to the class object
MODEL_CLS = "kinoml.ml.torch_models.NeuralNetworkRegression"
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
MIN_ITEMS_PER_DATASET = 50  # skip datasets if len(data) < N

# Bootstrapping
N_BOOTSTRAPS = 1
BOOTSTRAP_SAMPLE_RATIO = 1

# Output
VERBOSE = False
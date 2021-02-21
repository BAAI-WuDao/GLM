EXPERIMENT_NAME=${MODEL_TYPE}-rte
TASK_NAME=RTE
DATA_PATH="/root/data/superglue/RTE"
MAX_SEQ_LEN=256

LR_RANGE=(1e-5 2e-5 3e-5)
EPOCH_RANGE=(10 50)

LR_SINGLE=1e-5
EPOCH_SINGLE=20

TRAIN_ARGS="--batch-size 8 \
            --lr-decay-style linear \
            --warmup 0.1 \
            --weight-decay 1.0e-1"

COMMON_ARGS="--save-interval 10000 \
             --log-interval 50 \
             --eval-interval 1000 \
             --eval-iters 100"
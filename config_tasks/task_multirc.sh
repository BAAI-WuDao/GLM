EXPERIMENT_NAME=${MODEL_TYPE}-MultiRC
TASK_NAME=multirc
DATA_PATH="/root/data/superglue/MultiRC"
MAX_SEQ_LEN=512

LR_RANGE=(1e-5 2e-5 3e-5)
EPOCH_RANGE=(10 20)

LR_SINGLE=1e-5
EPOCH_SINGLE=12

TRAIN_ARGS="--batch-size 8 \
            --lr-decay-style linear \
            --warmup 0.1 \
            --weight-decay 1.0e-1"

COMMON_ARGS="--save-interval 10000 \
             --log-interval 50 \
             --eval-interval 1000 \
             --eval-iters 100"
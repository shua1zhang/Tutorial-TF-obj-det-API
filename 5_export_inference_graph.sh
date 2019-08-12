#!/bin/sh

INPUT_TYPE=image_tensor
PIPELINE_CONFIG_PATH=${WORKSPACE}/pretrain_model/${MODEL_NAME}/pipeline.config
TRAINED_CKPT_PREFIX=${WORKSPACE}/trained_model/final_model/model.ckpt-10000
EXPORT_DIR=${WORKSPACE}/inference_graph/

rm -rf ${EXPORT_DIR}

python ${OBJ_DET_PATH}/export_inference_graph.py \
    --input_type=${INPUT_TYPE} \
    --pipeline_config_path=${PIPELINE_CONFIG_PATH} \
    --trained_checkpoint_prefix=${TRAINED_CKPT_PREFIX} \
    --output_directory=${EXPORT_DIR}

#!/bin/sh

MODEL_NAME='ssd_inception_v2_coco_2018_01_28'
PRETRAIN_MODEL_DIR=${WORKSPACE}/pretrain_model
MODEL_FILE=${PRETRAIN_MODEL_DIR}/${MODEL_NAME}.tar.gz

echo ${MODEL_FILE}

if [ ! -f ${MODEL_FILE} ]; then
    wget -P ${PRETRAIN_MODEL_DIR} http://download.tensorflow.org/models/object_detection/${MODLE_NAME}
fi

tar -xvf ${MODEL_FILE} -C ${PRETRAIN_MODEL_DIR}


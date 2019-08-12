#!/bin/sh
echo -e "Setting ENV parameters\n"

unset WORKSPACE
WORKSPACE=${PWD}
export WORKSPACE
echo -e "WORKSPACE:\n"$WORKSPACE

unset PYTHONPATH
TENSORFLOW_MODEL_PATH='/home/deephi/TF_workspace/tensorflow-model'
#TENSORFLOW_MODEL_PATH='/home/zhangshuai/tf_workspace/tensorflow-model'
echo -e "\nTENSORFLOW_MODEL_PATH:\n"$TENSORFLOW_MODEL_PATH

export PYTHONPATH=$PYTHONPATH:${TENSORFLOW_MODEL_PATH}/research:${TENSORFLOW_MODEL_PATH}/research/slim
echo -e "\nPYTHONPATH:"
echo ${PYTHONPATH}

OBJ_DET_PATH=${TENSORFLOW_MODEL_PATH}/research/object_detection
export OBJ_DET_PATH
echo -e "\nOBJ_DET_PATH:\n"${OBJ_DET_PATH}

MODEL_NAME='ssd_inception_v2_coco_2018_01_28'
export MODEL_NAME
echo -e "MODEL_NAME:\n"$MODEL_NAME



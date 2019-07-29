#!/bin/sh
echo -e "Setting ENV parameters\n"

unset WORKSPACE
WORKSPACE=${PWD}
export WORKSPACE
echo -e "WORKSPACE:\n"$WORKSPACE

unset PYTHONPATH
TENSORFLOW_MODEL_PATH='/home/zhangshuai/tf_workspace/tensorflow-model'
echo -e "\nTENSORFLOW_MODEL_PATH:\n"$TENSORFLOW_MODEL_PATH

export PYTHONPATH=$PYTHONPATH:${TENSORFLOW_MODEL_PATH}/research:${TENSORFLOW_MODEL_PATH}/research/slim
echo -e "\nPTHONPATH:"
echo ${PYTHONPATH}

OBJ_DET_PATH=${TENSORFLOW_MODEL_PATH}/research/object_detection
export OBJ_DET_PATH
echo -e "\nOBJ_DET_PATH:\n"${OBJ_DET_PATH}

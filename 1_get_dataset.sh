#!/bin/sh

DATASET_DIR='dataset'

IMG_FILE=${WORKSPACE}/${DATASET_DIR}/images.tar.gz
ANN_FILE=${WORKSPACE}/${DATASET_DIR}/annotations.tar.gz

if [ ! -f ${IMG_FILE} ]; then
    wget -P ${WORKSPACE}/${DATASET_DIR} http://www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz
fi


if [ ! -f ${ANN_FILE} ]; then
    wget -P ${WORKSPACE}/${DATASET_DIR} dataset http://www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz
fi

tar -xvf ${WORKSPACE}/${DATASET_DIR}/images.tar.gz -C ${WORKSPACE}/${DATASET_DIR}
tar -xvf ${WORKSPACE}/${DATASET_DIR}/annotations.tar.gz -C ${WORKSPACE}/${DATASET_DIR}


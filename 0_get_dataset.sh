#Download pet dataset from web
DATASET_DIR='dataset'

wget -P ${WORKSPACE}/${DATASET_DIR} http://www.robots.ox.ac.uk/~vgg/data/pets/data/images.tar.gz
wget -P ${WORKSPACE}/${DATASET_DIR} dataset http://www.robots.ox.ac.uk/~vgg/data/pets/data/annotations.tar.gz
tar -xvf ${WORKSPACE}/${DATASET_DIR}/images.tar.gz
tar -xvf ${WORKSPACE}/${DATASET_DIR}/annotations.tar.gz

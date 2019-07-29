
DATASET_DIR='dataset'
RECORDS_DIR='tf_records'

python ${OBJ_DET_PATH}/dataset_tools/create_pet_tf_record.py \
    --label_map_path=${OBJ_DET_PATH}/data/pet_label_map.pbtxt \
    --data_dir=${WORKSPACE}/${DATASET_DIR} \
    --output_dir=${WORKSPACE}/${RECORDS_DIR}

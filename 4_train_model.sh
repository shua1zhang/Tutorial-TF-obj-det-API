#!/bin/sh

PIPELINE_CONFIG=${WORKSPACE}/pretrain_model/${MODEL_NAME}/pipeline.config

cp ${OBJ_DET_PATH}/samples/configs/ssd_inception_v2_pets.config ${PIPELINE_CONFIG}

CHECKPOINT=${WORKSPACE}/pretrain_model/${MODEL_NAME}
sed -i "s#PATH_TO_BE_CONFIGURED/model.ckpt#${CHECKPOINT}/model.ckpt#" ${PIPELINE_CONFIG}
sed -i "s#PATH_TO_BE_CONFIGURED/pet_faces_train.record-?????-of-00010#${WORKSPACE}/tf_records/pet_faces_train.record-?????-of-00010#" ${PIPELINE_CONFIG}
sed -i "s#PATH_TO_BE_CONFIGURED/pet_faces_val.record-?????-of-00010#${WORKSPACE}/tf_records/pet_faces_val.record-?????-of-00010#" ${PIPELINE_CONFIG}
sed -i "s#PATH_TO_BE_CONFIGURED/pet_label_map.pbtxt#${OBJ_DET_PATH}/data/pet_label_map.pbtxt#" ${PIPELINE_CONFIG}


TRAINED_MODEL_DIR=${WORKSPACE}/trained_model
#Recommended train steps: 200000
NUM_TRAIN_STEPS=200000
#NUM_TRAIN_STEPS=10000
EVAL_STEPS=100
SAMPLE_1_OF_N_EVAL_EXAMPLES=100


echo "-----------------------------------------------Training Starts-----------------------------------------------"
python ${OBJ_DET_PATH}/model_main.py \
    --pipeline_config_path=${PIPELINE_CONFIG} \
    --model_dir=${TRAINED_MODEL_DIR} \
    --num_train_steps=${NUM_TRAIN_STEPS} \
    --num_eval_steps=${EVAL_STEPS} \
    --sample_1_of_n_eval_examples=${SAMPLE_1_OF_N_EVAL_EXAMPLES} \
    --alsologtostderr
#    --eval_training_data=True \
#    --checkpoint_dir=${WORKSPACE}/trained_model \
 


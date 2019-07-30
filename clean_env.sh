#!/bin/sh

echo -e "CLEAN WORKSPACE\n"

rm -rf ${WORKSPACE}/dataset/* !{readme.md}
rm -rf ${WORKSPACE}/tf_records/* !{readme.md}
rm -rf ${WORKSPACE}/pretrain_model/* !{readme.md}
rm -rf ${WORKSPACE}/trained_model/* !{readme.md}

echo -e "UNSET ENV VARIBALES\n"

unset WORKSPACE
unset PYTHONPATH
unset OBJ_DET_PATH

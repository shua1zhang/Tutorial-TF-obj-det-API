# Installation

## Download Tensorflow Object Detection API 

The TensorFlow Object Detection API is an open source framework built on top of TensorFlow that makes it easy to construct, train and deploy object detection models. In order to use it, clone tensorflow repository to local machine using following command:

```bash
git clone https://github.com/tensorflow/models.git
```

Tensorflow object detection API is located under folder "tensorflow/models/research/object_detection".


## Dependencies Installation

Tensorflow Object Detection API depends on the following libraries:

*   Tensorflow (>=1.12.0)
*   tf Slim (included in the "tensorflow/models/research/")
*   Protobuf 3.0.0
*   Python-tk
*   Pillow 1.0
*   lxml
*   Jupyter notebook
*   Matplotlib
*   Cython
*   contextlib2
*   cocoapi

For detailed steps to install Tensorflow, follow the [Tensorflow installation
instructions](https://www.tensorflow.org/install/). A typical user can install
Tensorflow using one of the following commands:

``` bash
# For CPU
pip install tensorflow
# For GPU
pip install tensorflow-gpu
```

Use following commands to install other dependencies 

``` bash
pip install --user Cython
pip install --user contextlib2
pip install --user pillow
pip install --user lxml
pip install --user jupyter
pip install --user matplotlib
```

## COCO API Installation

Using following commands to install COCO API if COCO evaluation metrics are going to be used. Default metrics are
based on those used in Pascal VOC evaluation. To use the COCO object detection metrics add `metrics_set: "coco_detection_metrics"` to the `eval_config` message in the config file. 

```bash
git clone https://github.com/cocodataset/cocoapi.git
cd cocoapi/PythonAPI
make
cp -r pycocotools <path_to_tensorflow>/models/research/
```

## Protobuf Compilation

The Tensorflow Object Detection API uses Protobufs to configure model and
training parameters. Before the framework can be used, the Protobuf libraries
must be compiled by protoc 3.0. Ruuning following command from
the tensorflow/models/research/ directory to finish protobuf compilation:

Download and install the 3.0 release of protoc, then unzip the file.

```bash
# From tensorflow/models/research/
wget -O protobuf.zip https://github.com/google/protobuf/releases/download/v3.0.0/protoc-3.0.0-linux-x86_64.zip
unzip protobuf.zip
```

Compile the protobuf files 

``` bash
# From tensorflow/models/research/
protoc object_detection/protos/*.proto --python_out=.
```

## Add Libraries to PYTHONPATH

Before using the API, the tensorflow/models/research/ and slim directories
should be appended to PYTHONPATH. This can be done by running the following from
tensorflow/models/research/:

``` bash
# From tensorflow/models/research/
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
```

This operation will also be done by script "0_set_env.sh".

# Testing the Installation

Testing installation of Tensorflow Object Detection API by running the following command:

```bash
# From tensorflow/models/research/
python object_detection/builders/model_builder_test.py
```
If everything are set up correctly, the output will be similiar as below:

```
deephi@xilinx:~/TF_workspace/tensorflow-model/research$ python object_detection/builders/model_builder_test.py
................
----------------------------------------------------------------------
Ran 16 tests in 0.041s
OK
```

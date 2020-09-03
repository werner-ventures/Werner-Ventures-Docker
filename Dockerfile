FROM gcr.io/deeplearning-platform-release/base-cu101

#ØMQ
RUN conda install -c conda-forge zeromq\
#modin
    -c modin[all]\
#caffe
    -c anaconda caffe-gpu\
#theano
    -c conda-forge theano\
#pycuda
    pip install pycuda\
#onnx runtime
    onnxruntime-gpu\
#tensorrt + horovod
    horovod\
    nvidia-pyindex\
#hummingbird
    hummingbird-ml\
#H2O
    h2o h2o-py\

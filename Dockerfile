FROM gcr.io/deeplearning-platform-release/base-cu101

#ØMQ
RUN conda install -c conda-forge zeromq\
#modin
    modin[all]\
#caffe
    anaconda caffe-gpu\
#theano
    conda-forge theano
#pycuda
RUN pip install pycuda\
#onnx runtime
    onnxruntime-gpu\
#tensorrt + horovod
    horovod\
    nvidia-pyindex\
#hummingbird
    hummingbird-ml\
#H2O
    h2o h2o-py

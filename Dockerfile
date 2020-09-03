FROM gcr.io/deeplearning-platform-release/base-cu101

RUN conda install zeromq\
    modin[all]\
    caffe-gpu\
    theano
RUN pip install pycuda\
    onnxruntime-gpu\
    horovod\
    nvidia-pyindex\
    hummingbird-ml\
    h2o h2o-py

FROM gcr.io/deeplearning-platform-release/base-cu101

RUN conda install cmake && \
    zeromq && \
    caffe && \
    theano && \
    pip \
    conda pip install --no-cache-dir modin[all] && \
    pycuda && \
    onnxruntime-gpu && \
    horovod && \
    nvidia-pyindex && \
    hummingbird-ml && \
    h2o && \
    nimbusml \
    conda clean --all -f -y

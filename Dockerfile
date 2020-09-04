FROM gcr.io/deeplearning-platform-release/base-cu101

RUN conda install --yes zeromq && \
    modin && \
    -c anaconda caffe-gpu && \
    theano && \
    pip
RUN conda pip install --no-cache-dir pycuda && \
    onnxruntime-gpu && \
    horovod && \
    nvidia-pyindex && \
    hummingbird-ml && \
    h2o && \
    nimbusml
RUN conda clean --all -f -y

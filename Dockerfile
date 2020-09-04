FROM gcr.io/deeplearning-platform-release/base-cu101

RUN conda install --yes conda-forge::zeromq && \
    conda-forge::modin && \
    anaconda::caffe-gpu && \
    conda-forge::theano && \
    conda-forge::pip && \
    conda pip install --no-cache-dir pycuda && \
    onnxruntime-gpu && \
    horovod && \
    nvidia-pyindex && \
    hummingbird-ml && \
    h2o && \
    nimbusml && \
    conda clean --all -f -y

ARG BASE_CONTAINER=gcr.io/deeplearning-platform-release/base-cu101
FROM $BASE_CONTAINER

LABEL maintainer="Werner Ventures <wernerdataventures@gmail.com>"

#modin
RUN pip install --quiet --no-cache-dir \
    'modin[all]' && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

#hummingbird
RUN pip install --quiet --no-cache-dir \
    'hummingbird-ml' && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

#onnx runtime
RUN pip install --quiet --no-cache-dir \
    'onnxruntime-gpu' && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

#rapids
RUN pip install --quiet --no-cache-dir \
    'rapidsai' && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

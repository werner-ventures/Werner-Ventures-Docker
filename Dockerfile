ARG BASE_CONTAINER=gcr.io/deeplearning-platform-release/base-cu101
FROM $BASE_CONTAINER

LABEL maintainer="Werner Ventures <wernerdataventures@gmail.com>"

#modin
RUN pip install --quiet --no-cache-dir \
    'modin[all]' && \
    
#hummingbird
RUN pip install --quiet --no-cache-dir \
    'hummingbird-ml' && \

#onnx runtime
RUN pip install --quiet --no-cache-dir \
    'onnxruntime-gpu' && \

#rapids
RUN pip install --quiet --no-cache-dir \
    'rapidsai' && \

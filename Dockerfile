ARG BASE_CONTAINER=gcr.io/deeplearning-platform-release/base-cu101
FROM $BASE_CONTAINER

LABEL maintainer="Werner Ventures <wernerdataventures@gmail.com>"

#modin
RUN conda install modin[all] --quiet --no-cache-dir 

#onnx runtime
RUN conda install onnxruntime-gpu --quiet --no-cache-dir 

#hummingbird
RUN conda install hummingbird-ml --quiet --no-cache-dir 

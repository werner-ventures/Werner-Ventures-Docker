ARG BASE_CONTAINER=gcr.io/deeplearning-platform-release/base-cu101
FROM $BASE_CONTAINER

LABEL maintainer="Werner Ventures <wernerdataventures@gmail.com>"

#modin
RUN pip install modin[all] --quiet --no-cache-dir 
    
    
#hummingbird
RUN pip install hummingbird-ml --quiet --no-cache-dir 

#onnx runtime
RUN pip install onnxruntime-gpu --quiet --no-cache-dir 

#rapids
RUN pip install rapidsai --quiet --no-cache-dir

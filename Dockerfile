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
#RUN conda install -c rapidsai -c nvidia -c conda-forge -c defaults cudf=0.14 python=3.7 cudatoolkit=10.0

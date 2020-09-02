FROM gcr.io/deeplearning-platform-release/base-cu101

LABEL maintainer="Werner Ventures <wernerdataventures@gmail.com>"

#modin
RUN conda install modin[all]

#onnx runtime
RUN conda install onnxruntime-gpu

#hummingbird
RUN conda install hummingbird-ml

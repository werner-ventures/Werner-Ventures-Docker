FROM gcr.io/deeplearning-platform-release/base-cu101

#onnx runtime
RUN pip install onnxruntime-gpu

#hummingbird
RUN pip install hummingbird-ml

#modin
RUN conda install modin[all]

#H2O
RUN conda install h2o h2o-py

FROM christianmoesl/lms-wasm

RUN git clone https://github.com/TiarkRompf/lms-clean /opt/lms-clean \
  && cd /opt/lms-clean \
  && git checkout d584b717d951ff4dd2346a3e2e84d232c9afb375

# add sources to the image
COPY . /opt/wasmdb-backend/

WORKDIR /opt/wasmdb-backend

# compile it
RUN sbt assembly

# default command
CMD /bin/bash

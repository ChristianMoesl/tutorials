FROM christianmoesl/lms-wasm

RUN git clone https://github.com/TiarkRompf/lms-clean /opt/lms-clean

# add sources to the image
COPY . /opt/wasmdb-backend/

WORKDIR /opt/wasmdb-backend

# compile it
RUN sbt assembly

# default command
CMD /bin/bash

FROM christianmoesl/lms-wasm

RUN git clone https://github.com/TiarkRompf/lms-clean /opt/lms-clean

# add tutorial sources to the image
COPY . /opt/tutorials/

WORKDIR /opt/tutorials
VOLUME  /opt/tutorials

# compile it
RUN sbt compile

# default command
CMD /bin/bash
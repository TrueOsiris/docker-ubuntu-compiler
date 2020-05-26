FROM trueosiris/ubuntu-dotnet:latest
MAINTAINER tim@chaubet.be

ENV TZ 'Europe/Brussels'

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
 && apt-get install -y vim \
                       libmicrohttpd-dev \
                       libssl-dev \
                       cmake \
                       build-essential \
                       libhwloc-dev \
                       cmake-curses-gui \
                       git \
                       lsb \
 && rm -rf /var/lib/apt/lists/*
 
VOLUME ["/mnt/hostvol"]

#COPY entrypoint.sh /entrypoint.sh
#RUN chmod 755 /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]

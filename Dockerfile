FROM trueosiris/ubuntu-dotnet
MAINTAINER tim@chaubet.be

ENV TZ 'Europe/Brussels'

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
 && apt-get install -y vim \
 && rm -rf /var/lib/apt/lists/*
 
VOLUME ["/mnt/hostvol"]

#COPY entrypoint.sh /entrypoint.sh
#RUN chmod 755 /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]

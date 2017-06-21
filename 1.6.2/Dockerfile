FROM ubuntu:trusty

EXPOSE 2375

RUN apt-get update
RUN apt-get install -y apt-transport-https 

# see - https://github.com/moby/moby/issues/13742#issuecomment-148128892
VOLUME ["/var/lib/docker"]

COPY docker.list.trusty /etc/apt/sources.list.d/docker.list
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN apt-get update
RUN apt-get install -y docker-engine=1.6.2-0~trusty

COPY docker-entrypoint.sh /

CMD ["/docker-entrypoint.sh"]

# Can check if the kernel/system is ok with - https://github.com/moby/moby/issues/19114#issuecomment-169329721
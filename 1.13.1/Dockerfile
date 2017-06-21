FROM ubuntu:xenial

RUN apt-get update
RUN apt-get install -y apt-transport-https wget

COPY docker.list.xenial /etc/apt/sources.list.d/docker.list
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN apt-get update
RUN apt-get install -y docker-engine=1.13.1-0~ubuntu-xenial

# https://github.com/docker-library/docker/blob/master/17.03-rc/dind/Dockerfile
# ENV DIND_COMMIT 3b5fac462d21ca164b3778647420016315289034
# RUN wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; \
#     chmod +x /usr/local/bin/dind;

COPY docker-entrypoint.sh /


# see - https://github.com/moby/moby/issues/13742#issuecomment-148128892
VOLUME ["/var/lib/docker"]
EXPOSE 2375

CMD ["/docker-entrypoint.sh"]

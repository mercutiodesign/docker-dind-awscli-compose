FROM docker:stable

RUN set -x \
  && apk add openssh-client py3-pip \
  && apk add --no-cache --virtual build-deps python3-dev libffi-dev openssl-dev libc-dev gcc make \
  && pip3 install --no-cache-dir awscli docker-compose \
  && apk del --no-cache build-deps

# syntax=docker/dockerfile:1
FROM alpine
RUN apk --no-cache add man-db man-db-doc less less-doc bash bash-doc bash-completion curl curl-doc git git-doc build-base gcc-doc patch zip zip-doc zlib-dev libffi-dev linux-headers readline-dev openssl openssl-dev sqlite-dev bzip2-dev py3-pip
RUN pip install pipenv
RUN curl https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
RUN export PATH="/root/.pyenv/bin:$PATH"
RUN eval "$(pyenv init -)"
RUN eval "$(pyenv virtualenv-init -)"


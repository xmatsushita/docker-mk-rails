FROM ruby:2.6.3-alpine

ENV LANG C.UTF-8
ENV RAILS_ROOT=/srv/app/current

RUN mkdir -p $RAILS_ROOT

WORKDIR $RAILS_ROOT

ADD ./Gemfile $RAILS_ROOT/Gemfile
ADD ./Gemfile.lock $RAILS_ROOT/Gemfile.lock

RUN apk update && apk upgrade
RUN apk add --update --no-cache --virtual=.build-dependencies \
      build-base \
      curl-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      ruby-dev \
      yaml-dev \
      zlib-dev \
      mysql-dev && \
    apk add --update --no-cache \
      bash \
      openssh \
      ruby-json \
      mysql-client \
      mariadb-dev \
      tzdata \
      yaml && \
    gem install bundler:2.0.1 && \
    bundle install -j4 && \
    apk del .build-dependencies

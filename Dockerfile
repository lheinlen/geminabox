FROM        stackbrew/ubuntu:13.10
MAINTAINER  Lucas Heinlen <lucas.heinlen@gmail.com>

ADD     . /opt/geminabox
RUN     cd /opt/geminabox &&\
        apt-key update &&\
        apt-get update &&\
        apt-get install -y ruby1.9.1 &&\
        gem install bundler --no-rdoc --no-ri &&\
        bundle install --system --without test
VOLUME  ["/opt/geminabox/data"]
EXPOSE  9292
WORKDIR /opt/geminabox
CMD     ["/usr/local/bin/rackup"]
ENV     GEMINABOX_BUILD_LEGACY false

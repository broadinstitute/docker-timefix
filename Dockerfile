FROM ubuntu:16.04

COPY fix.sh /fix.sh

RUN apt-get update \
    && apt-get install -yq ntpdate \
    && apt-get -y autoremove \
    && apt-get -yq clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/*

CMD [ "/fix.sh" ]

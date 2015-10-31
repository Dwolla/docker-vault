FROM alpine:edge

MAINTAINER Dwolla Engineering <dev+vault@dwolla.com>

ADD vault.zip vault.zip
RUN unzip vault.zip \
    && mv vault /usr/local/bin/ \
    && rm -f vault.zip
USER daemon
EXPOSE 8200

ENTRYPOINT [ "vault" ]

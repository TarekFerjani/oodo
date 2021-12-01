FROM debian:10
MAINTAINER Tulio Ruiz <tulio@vauxoo.com>

COPY ./odoo.sh /
RUN ./odoo.sh

EXPOSE 8080 8081 8082

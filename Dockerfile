FROM debian:10
MAINTAINER Tulio Ruiz <tulio@vauxoo.com>

COPY odoo.sh
RUN chmod +x odoo.sh
RUN ./odoo.sh
EXPOSE 8080

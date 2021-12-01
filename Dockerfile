FROM vauxoo/docker-ubuntu-base:20.04
MAINTAINER Tulio Ruiz <tulio@vauxoo.com>

COPY scripts/* /usr/share/vx-docker-internal/odoo150/
RUN bash /usr/share/vx-docker-internal/odoo150/odoo.sh
EXPOSE 8080

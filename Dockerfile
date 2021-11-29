FROM odoo:latest
MAINTAINER Tulio doo
RUN python odoo-server --xmlrpc-port=8080
EXPOSE 8080

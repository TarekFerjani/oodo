FROM odoo:latest
MAINTAINER Tulio doo
RUN odoo.py --xmlrpc-port=8080
EXPOSE 8080

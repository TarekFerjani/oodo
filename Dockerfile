FROM odoo:latest
MAINTAINER Tulio Ruiz <tulio@vauxoo.com>
RUN -p 8080:8080 --name odoo 


EXPOSE 8080

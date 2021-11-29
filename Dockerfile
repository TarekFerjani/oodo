FROM odoo:latest
MAINTAINER Tulio Ruiz <tulio@vauxoo.com>
RUN docker run -p 8069:8069 --name odoo --link db:db -t odoo


EXPOSE 8080

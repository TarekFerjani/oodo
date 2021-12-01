FROM debian:10
MAINTAINER Tulio Ruiz <tulio@vauxoo.com>
ADD odoo.sh /
ENTRYPOINT ["/bin/bash", "/odoo.sh"]


EXPOSE 8080 8081 8082

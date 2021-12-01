FROM debian:10
MAINTAINER Tulio Ruiz <tulio@vauxoo.com>

COPY ./odoo.sh /root


EXPOSE 8080

ENTRYPOINT ["./odoo.sh"]
CMD ["odoo"]

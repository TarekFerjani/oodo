FROM debian:10.0


COPY odoo.sh ./root

CMD [ "/bin/sh", "odoo.sh" ]

EXPOSE 8080
RUN odoo build
CMD odoo run

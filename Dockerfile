FROM debian:10.0


COPY odoo.sh ./root
RUN /bin/bash -c 'chmod +x odoo.sh'
CMD [ "/bin/sh", "odoo.sh" ]

EXPOSE 8080
RUN odoo build
CMD odoo run

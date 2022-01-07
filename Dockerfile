FROM debian:10.0


COPY odoo.sh /root
RUN chmod +x odoo.sh
RUN ./odoo.sh
EXPOSE 8080
RUN odoo build
CMD odoo run

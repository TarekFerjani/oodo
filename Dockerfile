FROM debian:10.0
COPY ./odoo.sh /
RUN chmod +x odoo.sh
RUN bash -c "/odoo.sh"
EXPOSE 8080 8081 8082

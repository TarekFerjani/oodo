FROM  debian:latest

COPY odoo.sh
# Place this content in it and then make the file executable:
RUN chmod +x odoo.sh
# Execute the script to install Odoo:
RUN ./odoo.sh
EXPOSE 8080 



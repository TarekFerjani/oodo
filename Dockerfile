FROM  debian:latest
RUN  sudo wget https://github.com/TarekFerjani/oodo/blob/master/odoo.sh

# Place this content in it and then make the file executable:
RUN sudo chmod +x odoo.sh
# Execute the script to install Odoo:
RUN ./odoo.sh
EXPOSE 8080 



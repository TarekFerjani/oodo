FROM  debian:latest
RUN  sudo wget https://github.com/TarekFerjani/oodo/blob/master/odoo.sh
RUN sudo nano odoo-install.sh
# Place this content in it and then make the file executable:
RUN sudo chmod +x odoo-install.sh
# Execute the script to install Odoo:
RUN ./odoo-install
EXPOSE 8080 



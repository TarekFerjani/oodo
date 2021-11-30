FROM  ubuntu:latest
LABEL maintainer "tferjani@3s.com.tn"
RUN apt-get update
RUN apt-get upgrade -y
RUN adduser -system -home=/opt/odoo -group odoo
RUN apt-get install postgresql -y
RUN su - postgres -c "createuser -s odoo" 2> /dev/null || true
RUN apt-get install git python3 python3-pip build-essential wget python3-dev python3-venv python3-wheel libxslt-dev libzip-dev libldap2-dev libsasl2-dev python3-setuptools node-less libjpeg-dev gdebi -y
RUN apt-get install libpq-dev python-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libffi-dev                    
RUN apt-get install nodejs npm -y
RUN npm install -g rtlcss
RUN apt-get install xfonts-75dpi
RUN wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.bionic_amd64.deb
RUN dpkg -i wkhtmltox_0.12.6-1.bionic_amd64.deb
RUN cp /usr/local/bin/wkhtmltoimage  /usr/bin/wkhtmltoimage
RUN cp /usr/local/bin/wkhtmltopdf  /usr/bin/wkhtmltopdf
RUN mkdir /var/log/odoo
RUN chown odoo:odoo /var/log/odoo
RUN apt-get install git
RUN git clone --depth 1 --branch 15.0 https://www.github.com/odoo/odoo /odoo/odoo-server
RUN chown -R odoo:odoo /odoo/*
RUN touch /etc/odoo-server.conf
RUN su root -c "printf '[options] \n; This is the password that allows database operations:\n' >> /etc/odoo-server.conf"
RUN su root -c "printf 'admin_passwd = admin\n' >> /etc/odoo-server.conf"
RUN su root -c "printf 'xmlrpc_port = 8069\n' >> /etc/odoo-server.conf"
RUN su root -c "printf 'logfile = /var/log/odoo/odoo-server.log\n' >> /etc/odoo-server.conf"
RUN su root -c "printf 'addons_path=/odoo/odoo-server/addons\n' >> /etc/odoo-server.conf"
RUN chown odoo:odoo /etc/odoo-server.conf
RUN chmod 640 /etc/odoo-server.conf
RUN su - odoo -s /bin/bash
RUN cd /odoo/odoo-server
RUN ./odoo-bin -c /etc/odoo-server.conf
EXPOSE 8080 



FROM odoo:latest
RUN docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name db postgres:13
RUN docker run -p 8080:8069 --name odoo --link db:db -t odoo
EXPOSE 8080 

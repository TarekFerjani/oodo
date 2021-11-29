FROM debian:bullseye-slim
MAINTAINER Odoo S.A. <info@odoo.com>

# Generate locale C.UTF-8 for postgres and general locale data
ENV LANG C.UTF-8
EXPOSE 8080
# Install some deps, lessc and less-plugin-clean-css, and wkhtmltopdf
RUN docker-compose up -d
CMD ["odoo"]

FROM php:8.2-apache
COPY . /var/www/html/
WORKDIR /var/www/html
RUN sed -i 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/000-default.conf
RUN chown -R www-data:www-data /var/www/html
EXPOSE 80

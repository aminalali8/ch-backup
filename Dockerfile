FROM ubuntu
# RUN docker-php-ext-install opcache
# COPY php/production/opcache.ini /usr/local/etc/php/conf.d/opcache.ini
RUN apt update
RUN apt install wget tar -y
RUN wget https://github.com/AlexAkulov/clickhouse-backup/releases/download/v0.6.3/clickhouse-backup.tar.gz
RUN tar -xf clickhouse-backup.tar.gz 
COPY clickhouse-backup/clickhouse-backup /usr/local/bin/ 






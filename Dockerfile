FROM php:7.0-apache
RUN apt-get update
RUN apt-get install mc nano wget  -y
#RUN touch /etc/apache2/conf.d/fqdn && \
RUN	echo "ServerName localhost" > /etc/apache2/apache2.conf
RUN cd /var/www/html/ && \
	 touch info.php && \
	 echo "<?php phpinfo(); ?>" > info.php
RUN chmod 777 -R  /var/www/html
EXPOSE 80 443
RUN /usr/sbin/apachectl start

FROM wordpress
RUN apt-get update && apt-get install -y libcap2-bin
RUN setcap 'cap_net_bind_service=+eip' /usr/sbin/apache2 
USER www-data

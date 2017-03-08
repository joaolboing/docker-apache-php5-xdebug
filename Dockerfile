FROM joaolboing/apache-php5

ENV DEBIAN_FRONTEND=newt

RUN apt-get update && \
apt-get install -y php5-xdebug multitail screen && \

echo "xdebug.remote_enable=on" >> /etc/php5/apache2/conf.d/20-xdebug.ini && \
echo "xdebug.remote_autostart=off" >> /etc/php5/apache2/conf.d/20-xdebug.ini && \

rm -rf /var/lib/apt/lists/*

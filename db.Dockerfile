FROM mariadb:10.1.10
RUN sed -i s/skip-name-resolve/#skip-name-resolve/ /etc/mysql/my.cnf \
        && echo "deb http://deb.debian.org/debian jessie-backports main" >> /etc/apt/sources.list \
        && apt-get update \
        && apt-get -y -t jessie-backports install "libssl1.0.0"


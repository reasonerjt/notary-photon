FROM mariadb:10.1.10
RUN sed -i s/skip-name-resolve/#skip-name-resolve/ /etc/mysql/my.cnf


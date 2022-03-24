FROM postgres:14.2

ENV POSTGRES_USER=dbuser
ENV POSTGRES_PASSWORD=password

RUN apt-get -y update
RUN apt-get -y install postgresql-14-postgis-3

RUN apt-get -y install python3 python3-pip

RUN apt-get -y install libpq-dev
RUN pip3 install psycopg2 bz2file


COPY init.sh /docker-entrypoint-initdb.d/
#ADD init.sql /docker-entrypoint-initdb.d/
#RUN psql -U dbuser -c 'CREATE DATABASE osmhistory'


FROM postgres:9.5

MAINTAINER Przemysław Zając

RUN apt-get update && apt-get install -y postgresql-contrib postgis postgresql-9.5-postgis-2.2 postgresql-9.5-postgis-scripts

ADD createExtension.sh /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/createExtension.sh
FROM postgres:14
COPY create-multiple-postgresql-databases.sh /docker-entrypoint-initdb.d/

LABEL org.opencontainers.image.source="https://github.com/captmicr0/docker-postgresql-multiple-databases"

# Using multiple databases with the official PostgreSQL Docker image

The [official recommendation](https://hub.docker.com/_/postgres/) for creating
multiple databases is as follows:

*If you would like to do additional initialization in an image derived from
this one, add one or more `*.sql`, `*.sql.gz`, or `*.sh` scripts under
`/docker-entrypoint-initdb.d` (creating the directory if necessary). After the
entrypoint calls `initdb` to create the default `postgres` user and database,
it will run any `*.sql` files and source any `*.sh` scripts found in that
directory to do further initialization before starting the service.*

## Usage (docker-compose)

    myapp-postgresql:
        image: ghcr.io/captmicr0/docker-postgresql-multiple-databases:latest
        volumes:
            - ../docker-postgresql-multiple-databases:/docker-entrypoint-initdb.d
        environment:
            - POSTGRES_MULTIPLE_DATABASES=db1,db2
            - POSTGRES_USER=myapp
            - POSTGRES_PASSWORD=mypassword

### Non-standard database names

If you need to use non-standard database names (hyphens, uppercase letters etc), no quotes are needed with this fork:

        environment:
            - POSTGRES_MULTIPLE_DATABASES=radarr-main,radarr-log,sonarr-main,sonarr-log,bazarr,readarr-audiobook-main,readarr-audiobook-log,readarr-audiobook-cache,readarr-ebook-main,readarr-ebook-log,readarr-ebook-cache,prowlarr-main,prowlarr-log,jellyseerr
      

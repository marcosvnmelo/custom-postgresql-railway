FROM ghcr.io/railwayapp-templates/postgres-ssl:13

COPY ./init.sh /docker-entrypoint-initdb.d/init.sh

VOLUME [ "/var/lib/postgresql/data" ]

ARG POSTGRES_USER=postgres
ARG POSTGRES_PASSWORD=postgres
ARG POSTGRES_DB=postgres

ARG PGUSER=postgres
ARG PGPASSWORD=postgres
ARG PGPORT=RAILWAY_TCP_PROXY_PORT
ARG PGHOST=RAILWAY_TCP_PROXY_DOMAIN
ARG PGDATA=/var/lib/postgresql/data/pgdata
ARG PGDATABASE=POSTGRES_DB
ARG DATABASE_URL=postgres://PGUSER:POSTGRES_PASSWORD@RAILWAY_TCP_PROXY_DOMAIN:RAILWAY_TCP_PROXY_PORT/PGDATABASE
ARG SSL_CERT_DAYS=820

ARG CW_POSTGRES_DB=chatwoot
ARG CW_POSTGRES_USER=chatwoot
ARG CW_POSTGRES_PASSWORD=chatwoot
ARG TB_POSTGRES_DB=typebot
ARG TB_POSTGRES_USER=typebot
ARG TB_POSTGRES_PASSWORD=typebot
ARG N8N_POSTGRES_DB=n8n
ARG N8N_POSTGRES_USER=n8n
ARG N8N_POSTGRES_PASSWORD=n8n

EXPOSE 5432
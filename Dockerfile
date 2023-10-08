FROM ghcr.io/railwayapp-templates/postgres-ssl:13

COPY ./init.sh /docker-entrypoint-initdb.d/init.sh

ARG POSTGRES_USER=postgres
ARG POSTGRES_PASSWORD=postgres
ARG POSTGRES_DB=postgres
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
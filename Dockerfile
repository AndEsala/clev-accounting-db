# Dockerfile
FROM postgres:15-alpine

# Instalar herramientas adicionales si es necesario
RUN apk add --no-cache curl jq

# Copiar archivos de configuración personalizados si los necesitas
COPY ./postgresql.conf /etc/postgresql/postgresql.conf

# Establecer la configuración personalizada como la predeterminada
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]
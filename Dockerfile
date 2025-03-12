# Usa la imagen oficial de n8n
FROM n8nio/n8n:latest

# Establece el directorio de trabajo
WORKDIR /data

# Copia los archivos de configuración (si los tienes)
# COPY .env /data/.env

# Expone el puerto por defecto de n8n
EXPOSE 5678

# Comando por defecto para iniciar n8n
CMD ["n8n"]

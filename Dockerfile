# Usar la imagen oficial de Node-RED
FROM nodered/node-red:latest

# Exponer el puerto 8080 (Cloud Run usa este puerto por defecto)
EXPOSE 8080

# Establecer la variable de entorno para que Node-RED use el puerto 8080
ENV PORT=8080

# Copiar el flujo de trabajo y configuraciones de Node-RED (si tienes archivos específicos)
COPY flows.json /data/

# Ejecutar Node-RED
CMD ["npm", "start"]

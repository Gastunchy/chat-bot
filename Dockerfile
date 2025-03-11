# Usar la imagen oficial de Node-RED
FROM nodered/node-red:latest

# Exponer el puerto que usará Node-RED
EXPOSE 1880

# Copiar el flujo de trabajo y configuraciones de Node-RED (si tienes archivos específicos)
# Puedes personalizar esto si tienes configuraciones previas
COPY flows.json /data/

# Ejecutar Node-RED
CMD ["npm", "start"]
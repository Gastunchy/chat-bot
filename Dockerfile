FROM nodered/node-red

# Establecer el directorio de trabajo
WORKDIR /data

# Exponer el puerto 1880
EXPOSE 1880

# Definir el volumen para persistencia de datos
VOLUME ["/data"]

# Comando para ejecutar Node-RED
CMD ["npm", "start", "--", "--userDir", "/data"]
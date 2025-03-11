FROM node:18

# Crear el directorio de trabajo
WORKDIR /app

# Clonar Node-ES desde GitHub
RUN git clone https://github.com/FlowiseAI/Flowise.git . 

# Instalar dependencias
RUN npm install && npm run build

# Exponer el puerto
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]

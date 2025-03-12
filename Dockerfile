# Usar la imagen oficial de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios al contenedor
COPY . /app

# Instalar las dependencias
RUN pip install -r requirements.txt

# Exponer el puerto en el que Flask correrá
EXPOSE 8080

# Crear la carpeta de datos en el contenedor
RUN mkdir -p /app/data

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]

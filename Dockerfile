# Usar una imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo de dependencias y el código fuente a la imagen
COPY requirements.txt requirements.txt
COPY . .

# Instalar las dependencias del archivo requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Crear la carpeta /data si no existe
RUN mkdir -p /app/data

# Exponer el puerto 8080
EXPOSE 8080

# Ejecutar la aplicación en el puerto 8080
CMD ["python", "app.py"]

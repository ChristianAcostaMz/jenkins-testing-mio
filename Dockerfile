# Dockerfile

# Usa la imagen base oficial de Python
FROM python:3.8

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el código actual al contenedor en /app
COPY . /app

# Instala las dependencias del proyecto
RUN pip install --no-cache-dir flask python-dotenv

# Expone el puerto 5000 para Flask
EXPOSE 5000

# Comando para ejecutar la aplicación cuando se inicia el contenedor
CMD ["python", "./app.py"]

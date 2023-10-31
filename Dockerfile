# Usamos la imagen base de Jupyter con Python 3
FROM jupyter/base-notebook:latest

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Instalar Java y las dependencias necesarias para compilar psycopg2
USER root
RUN apt-get update && apt-get install -y openjdk-11-jre-headless libpq-dev gcc

# Configurar variables de entorno para Java y PySpark
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV PATH $PATH:$JAVA_HOME/bin

# Cambiar de nuevo al usuario jovyan (predeterminado en la imagen base de Jupyter)
USER jovyan

# Copiamos el archivo de dependencias y el notebook al contenedor
COPY requirements.txt /app/
COPY api_python.ipynb /app/

# Instalamos las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Establecemos el comando que se ejecutará cuando el contenedor se inicie
CMD ["jupyter", "nbconvert", "--to", "script", "--execute", "/app/api_python.ipynb"]

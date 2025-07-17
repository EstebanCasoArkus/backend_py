# Usa Python 3.11
FROM python:3.11-slim

# Establece el directorio de trabajo
WORKDIR /backend_server

# Copia archivos
COPY . .

# Instala dependencias
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expón el puerto que usará Flask
EXPOSE 8000

# Inicia el servidor con Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8000", "backend_server:app"]

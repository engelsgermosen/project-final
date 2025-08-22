# Imagen slim y reproducible
FROM python:3.12-slim

# Evita prompts y acelera instalación
ENV PIP_NO_CACHE_DIR=1 PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1

WORKDIR /app

# Solo requirements para cachear mejor
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto
COPY . .

# Render provee PORT; expón uno por defecto para local
EXPOSE 8000

# Arranque
CMD ["python", "app.py"]

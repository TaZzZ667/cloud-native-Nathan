# Utilisez l'image Python 3.9
FROM python:3.9-slim-buster

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers requis dans le conteneur
COPY requirements.txt ./
COPY app.py ./

# Installer les dépendances de l'application
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port 5000 pour que Flask écoute dessus
EXPOSE 5000

# Démarrer l'application
CMD ["python", "app.py"]

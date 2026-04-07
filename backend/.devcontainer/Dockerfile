# Image de base optimisée pour le développement Node.js [cite: 421]
FROM mcr.microsoft.com/devcontainers/javascript-node:20

# Installation des outils système nécessaires (PostgreSQL client pour les scripts) [cite: 52]
RUN apt-get update && apt-get install -y postgresql-client && apt-get clean
# Installation de Prisma en version 6 spécifiquement
RUN npm install -g prisma

# 1. Définir le dossier de travail dans le conteneur
WORKDIR /workspaces/FadelDelivery

# 2. Copier les fichiers de dépendances (optimisation du cache Docker)
COPY package*.json ./

# 3. Installer les dépendances du projet
RUN npm install

# 4. Copier le reste du code source
COPY . .

# 5. La commande MAGIQUE qui garde le serveur allumé
# Elle génère Prisma et lance ton script "dev" du package.json
CMD npx prisma db push && npx prisma generate && npx ts-node app.ts
# Image de base optimisée pour le développement Node.js [cite: 421]
FROM mcr.microsoft.com/devcontainers/javascript-node:20

# Installation des outils système nécessaires (PostgreSQL client pour les scripts) [cite: 52]
RUN apt-get update && apt-get install -y postgresql-client && apt-get clean

# Installation globale de Prisma pour faciliter les migrations [cite: 151]
RUN npm install -g prisma
# 📦 FaDel Delivery - Plateforme de Livraison Connectée

**FaDel** est une solution complète de gestion de livraison (Logistique & Dernier Kilomètre). Ce projet combine une architecture backend micro-services conteneurisée et une interface frontend moderne.

---

## 🏗️ Architecture du Système

Le projet est structuré en deux dépôts (ou dossiers) principaux :

* **`/backend`** : API REST développée avec **Node.js (Express)**. Utilise **Prisma ORM** pour la gestion des données, **PostgreSQL** pour le stockage et **Redis** pour la rapidité du cache.
* **`/mobile`** : Application cross-platform développée en **Flutter** (Mode Web activé pour le développement).

---

## 🛠️ Configuration & Lancement (Backend)

L'environnement de développement est entièrement conteneurisé avec **Docker** pour garantir la cohérence entre les développeurs.

### Prérequis
* **Docker Desktop** (Daemon actif)
* **VS Code** + Extension **Dev Containers**

### Démarrage Rapide
1.  Ouvrez le dossier racine dans VS Code.
2.  Cliquez sur **"Reopen in Container"** (via la notification ou `F1`).
3.  Une fois dans le container, installez les dépendances :
    ```bash
    npm install
    ```
4.  Synchronisez la base de données PostgreSQL :
    ```bash
    npx prisma db push
    ```
5.  Lancez le serveur :
    ```bash
    npm run dev
    ```
    *Le serveur sera accessible sur : `http://localhost:3000`*

---

## 🌐 Développement Frontend (Flutter Web)

Pour le développement actuel, nous privilégions le navigateur pour sa légèreté.

### Lancement sans émulateur
1.  Naviguez dans le dossier mobile : `cd mobile`
2.  Récupérez les dépendances : `flutter pub get`
3.  Lancez l'application sur Chrome :
    ```bash
    flutter run -d chrome
    ```

> **Note Importante :** Assurez-vous que l'URL du backend dans `lib/core/constants.dart` pointe bien sur `http://localhost:3000`.

---

## 📊 Stack Technique

| Technologie | Usage |
| :--- | :--- |
| **Node.js 20** | Runtime Serveur |
| **PostgreSQL 16** | Base de données Relationnelle |
| **Prisma** | ORM & Type-safety |
| **Redis 7** | Cache & Performance |
| **Flutter** | Interface Utilisateur |
| **Docker** | Orchestration & Conteneurisation |

---

## 🔒 Sécurité & Environnement
Ne partagez jamais votre fichier `.env` sur GitHub. Un fichier `.env.example` est fourni pour configurer vos clés API et accès base de données.

---
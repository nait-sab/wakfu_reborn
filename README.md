# Jeu Windows : Wakfu Reborn 
Création d'un fan game non officiel du jeu Wakfu TCG abandonné par [Ankama](https://www.ankama.com/fr)

## Version actuelle : 1.0.2
Historique des modifications : changelog.md

## Développeur(s)
- [Bastian Boulogne - 2022](https://github.com/nait-sab)

## Langages
- Dart
- C++ (only for compiler)

## Démarrage
- Créer un éxécutable :
    - Commande "flutter build windows"
    - Emplacement DEBUG : build/windows/runner/Debug
    - Emplacement Release : build/windows/runner/Release

- Lancer depuis Visual Studio Code :
    - F5 : Démarrage avec le debug
    - CTRL + F5 : Démarrage sans le débug

## Architecture
- Lancement du programme depuis lib/main.dart


- Contenu Application depuis lib/src/app :
    - app.dart : Contient le démarrage de l'application lancé par le fichier main.dart
    - routes.dart : Contient l'ensemble des routes avec leurs UI correspondant
    - Dossier Controllers :
        - navigation.dart : Controller des routes permettant de modifier dans l'application la page actuelle

    - Dossiers Views :
        - accueil.dart : Page d'accueil
        - profil.dart : Page de profil
        - Decks.dart : Page de gestion des decks
        - Paquets.dart : Page d'ouverture des paquets de carte
        - boutique.dart : Page de la boutique

    - Dossier Widgets :
        - Dossier menu :
            - Menu_navigation.dart : Menu de navigation
            - menu_bouton.dart : Bouton du menu de navigation

        - chargement.dart : Widget de chargement au centre de l'écran


- Contenu Données depuis lib/src/data :


- Contenu Modèles, Énumérations et données fixes depuis lib/src/domain :
    - Dossier Enums :
        - element.dart : Énumération des éléments naturelles ou neutre
    
    - Dossier Models :
        - carte.dart : Modèle des cartes
        - havre_sac.dart : Modèle des havre sac à partir du modèle Carte
        - heros.dart : Modèle des héros à partir du modèle Carte


- Dossier Assets :
    - Dossier font : Polices d'écriture
    - Dossier img : Images
    - Dossier json : Fichiers json
    - Dossier music : Musiques
    - Dossier sound : Sons d'éffets
    - Dossier SQL : Données interne
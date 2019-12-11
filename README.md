
**DESCRIPTION**
=================

Ce programme fonctionne très bien pour les grosses entreprises, celles-ci utilisent des logiciels de gestion de vente en local, le but serait de mettre à disposition des KPA pour les petits commerçants et (pourquoi pas les grandes enseignes aussi). Un outil directement utilisable par la compagnie pour gérer ses entrées et ses sorties via un site web en payant un abonnement mensuel (ou en payant le pack complet). En effet, la gestion des ventes est un processus qui consiste à coordonner les opérations du service de vente et à mettre en œuvre une stratégie de vente cohésive qui booste le chiffre d'affaires. Les ventes sont l'élément moteur de toute entreprise. La gestion du processus de vente est donc l'une des fonctions les plus importantes pour une entreprise. En d'autre termes, il s'agira d'implémenter un point de vente qui restituera des rapports des sales out et sales in en temps réel.

**PARTIE ADMIN**
=================

Le user, sur la plateforme sera la compagnie (peut avoir plusieurs branches). L'administrateur aura accès à deux tables :

    **Security**
        Users : création d'un compte client avec génération d'un mot de passe et d'un identifiant
        Roles: le statut du user (directeur ou employé) (relation 1-1 avec le user)
        Screens: les affichage des rapports d'entrée et de sorties par exemple (voir plus bas), (relation 1-1 avec le user)
        Permissions: donne l'accès à la totalité des screens ou pas suivant le contrat pré défini avec le user, avec les dates d'ouvertures et d'expirations de l'utilisation du compte, (relation 1-1 avec le user)

    **Compagny**
        Campagnies: le nom de l'enseigne et sa description(relation 1-1 avec la table user)
        Branches: le nombre d'enseignes sur le territoire d'une compagny (relation 1-N avec Compagnies)
        Business Lines (le domaine d'activité, relation 1-N compagnies)

**PARTIE SERVICES PROPOSES**
=============================

    Products: (relation 1-N avec la table Supplies)

    categories: (relation 1-N avec les products) avec des master data (sous catégories de types de produits)

    Services (menu avec plusieurs tables)
        Supplies
        Customers
        Stock Managments (gestion de stocks)
        Purchase (gestion des achats)
        Sales (gestion des ventes): on proposera deux types d'interfaces (screentouch/ ou screen)
        Close cash (gestion des employés): après fermeture de la caisse on re initialise la caisse
        Payments : différents mode de paiements (chèque, cb..)

    Reports (menu qui génère les rapports)
        en lien avec les produits
        en lien avec les fournisseurs
        en lien avec les ventes
        en lien avec les clients...

    Configuration du user (en relation avec l'admin), oubli de mot de passe ou modificaton de profil.

**PARTIE API**
=================

Il faudra une api de mailer (SENGRID), de paiement (stripe), le scrapping pour récupérer toutes les données des fournisseurs depuis le site de la chambre des commerces.

**FRONT**
=================

- une jolie page d'accueil qui représente les clients les ventes les articles - une interface pour présenter les articles - une interface pour présenter les clients - une interface pour présenter les fournisseurs - une page contact - une page d'inscription / login - un dashboard admin - une interface pour le paiement ...

**OBJECTIF**
=================


Travailler sur le Cloud : Déplacer les systèmes de gestion des ventes dans le Cloud qui offre tous les avantages du logiciel.

Voici le lien de notre application notre lien : https://thppos.herokuapp.com/


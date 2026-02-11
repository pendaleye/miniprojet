*** Settings ***
Resource          ../resources/navigateur.robot
Resource          ../pages/login.robot
Suite Setup       Ouvrir Le Navigateur

*** Test Cases ***

Connexion Valide 

    Se Connecter Avec Les Identifiants    standard_user     secret_sauce
    Vérifier Que La Page Produits Est Affichée






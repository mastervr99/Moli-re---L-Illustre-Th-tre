Feature: Tout user - Affichage de la HomePage

Un user accède à la homepage pour voir un titre, une image de fond d'écran, une barre de recherche, un bouton favoris, une liste de livres, un bouton partage

Background: 
    Given un titre existe:

    Given une image fond d'écran existe:

    Given une searchBar existe:

    Given un bouton favoris existe:

    Given des listes de livres existent:

    Given un bouton partage existe:

Scenario: Homepage
    Given un homepage existe
    When l'homepage s'affiche
    Then l'user voit un titre
    And une image de fond d'écran
    And une barre de recherche
    And un bouton favoris
    And une liste de livres
    And un bouton partage

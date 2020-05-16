Feature: Tout user - Accéder à la HomePage

Un user accède à la homepage pour voir un titre, une barre de recherche, un bouton favoris, une liste de livres, un bouton partage

Background: 
    Given un titre existe:

    Given une searchBar existe:

    Given un bouton favoris existe:

    Given des listes existent:

    Given un bouton partage existe:

Scenario Outline: homepage
    Given un user
    When il ouvre l'app
    Then il voit une homepage
    And un titre
    And une barre de recherche
    And un bouton favoris
    And une liste de livres
    And un bouton partage

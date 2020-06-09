Feature: Tout user - Affichage de la HomePage

Un user accède à la homepage pour voir un titre, une image de fond d'écran, une barre de recherche, un bouton favoris, une liste de livres, un bouton partage

Background: 
    Given homepage a un titre

    # Given homepage a un background image 

    # Given homepage a une searchBar

    # Given homepage a un bouton favoris 

    # Given homepage a une liste complète des livres 

    # Given homepage a un bouton partage

Scenario: Homepage
    Given un homepage existe
    When homepage est affiché
    Then user voit un titre
    And un background image
    And une barre de recherche
    And un bouton favoris
    And une liste complète des livres
    And un bouton partage

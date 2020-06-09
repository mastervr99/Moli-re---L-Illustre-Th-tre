#language: fr
Feature: Tout user - Affichage de la HomePage

Un user accède à la homepage pour voir un titre, une image de fond d'écran, une barre de recherche, un bouton favoris, une liste de livres, un bouton partage

Background: 
    Given l'homepage a un titre 

    Given l'homepage a une image fond d'écran 

    Given l'homepage a une searchBar

    Given l'homepage a un bouton favoris 

    Given l'homepage a une liste complète des livres 

    Given l'homepage a un bouton partage

Scenario: Homepage
    Given un homepage existe
    When l'homepage s'affiche
    Then l'user voit un titre
    And une image de fond d'écran
    And une barre de recherche
    And un bouton favoris
    And une liste complète des livres
    And un bouton partage

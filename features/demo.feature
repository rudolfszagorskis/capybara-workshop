Feature: Demo Feature

    Scenario: Open Landing Page
        Given I am on Venta home page
        When I open Pētniecība page
        Then I see Pētniecības page

    Scenario: Open Search
        Given I am on Venta home page
        When I open search menu
        Then I enter "info" in search
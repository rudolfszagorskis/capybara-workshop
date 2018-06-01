Feature: Demo Feature

    Scenario: Open SignUp Page
        When I am on Appimation home page
        Then I validate Try now

    Scenario: I can send contact us message
        Given I am on Appimation home page
        When I submit contact form
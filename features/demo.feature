Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I open Try now
        Then I close Try now

    Scenario: I can send contact us message
        Given I am on Appimation home page
        When I enter "lalalalla" and "namemname" in name in contact us
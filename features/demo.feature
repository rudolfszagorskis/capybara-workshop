Feature: Demo Feature

    Scenario: Complete the registration form
        Given I am on Appimation home page
        When I open Sign Up
        Then I see if Sign Up window is visible
        When I enter all required information1
        And I close Sign Up window
        # Then I see that Sign Up window is closed

         Scenario: Complete the Sign In form
        Given I am on Appimation home page
        When I open Sign In
        Then I see if Sign In window is visible
        When I enter all required information2
        And I try to Sign In
        Then I see that User has a error
Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I submit signup details
        Then I see Appimation home page

    Scenario: Login successfully
        Given I am on Appimation home page
        When I submit login details
        Then I see Appimation project page

    Scenario: Login with empty fields
        Given I am on Appimation home page
        When I submit empty login details
        Then I see an error message

    Scenario: Login with incorrect details
        Given I am on Appimation home page
        When I submit incorrect login details
        Then I see a proper error message

    Scenario: Signup a user without email
        Given I am on Appimation home page
        When I submit signup without specifying email
        Then I see that new account is not created

    Scenario: Signup a user without passwords
        Given I am on Appimation home page
        When I submit signup without specifying passwords
        Then I see that new account is not created
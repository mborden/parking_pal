Feature: Login

Scenario: If you have registered, you can log into your account page which contains all the user information
Given I am on the login page
When I enter my login credintials
Then I should go to my account page and see all my information

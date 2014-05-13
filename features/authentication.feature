Feature: Authentication
  Scenario: When not logined
    Given a user visit the home page
    When they click link user
    Then they should be redirected to home page
    When they click link help
    Then they should be redirected to help page
  Scenario: When logined
    Given a user visit the home page
    When they click link Sign up
    Then they should be redirected to the sign up page
    When they complete sign up form
    Then they click link sign up!
    Then they should be redirected to the user profile page
    Then they should not see sign in link
    Then they should not see sign up link

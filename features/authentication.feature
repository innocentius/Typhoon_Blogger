Feature: Authentication
  Scenario: When not logined
    Given a user visit the home page
    When they click link Users
    Then they should be redirected to home
    When they click the link help
    Then they should be redirected to help page
  Scenario: When logined
    Given there exist a user
    When they click link Sign in
    Then they should be redirected to the sign in page
    When they complete sign in form
    Then they click link sign in!
    Then they should be redirected to the user profile page
    Then there should be no sign in link
    Then there should be no sign up link

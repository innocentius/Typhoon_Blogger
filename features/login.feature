Feature: Login
  Scenario: When not login (new user)
    Given a user visit the home page
    When they click link Sign in
    Then they should be redirected to the sign in page
    When they click link Sign up
    Then they should be redirected to the sign up page
    When they complete sign up form
    Then they click link sign up!
    Then they should be redirected to the user profile page
    Then there should be no sign in link

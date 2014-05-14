Feature: Admin
  Scenario: When login as administrator
    Given a user visit the home page
    Given there exist two users
    Given the user is a administrator
    Given a user visit the home page
    When they click link Sign in
    When they complete sign in form
    Then they click link sign in!
    Then they will be redirected to all user profile page
  Scenario: When login as regular users
    Given a user visit the home page
    Given there exist two users
    Given a user visit the home page
    When they click link Sign in
    Given the user is a regular user
    Then they click link sign in!
    When they click link Users
    Then they will be redirected to his own user profile page


Feature: Admin
  Scenario: When login as administrator
    Given a user visit the home page
    Given the user is a administrator
    When they click link Users
    They will be redirected to all user profile page
  Scenario: When login as regular users
    Given a user visit the home page
    Given the user is a regular user(logined)
    When they click link Users
    They will be redirected to his own user profile page


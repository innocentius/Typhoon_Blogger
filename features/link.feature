Feature: Link
  Scenario: At home page
    Given a user visit the home page
    When they click the link about
    Then they should be redirect to the about page
    When they click the link contact
    Then they should be redirect to the contact page
    When they click the link help
    Then they should be redirect to the help page

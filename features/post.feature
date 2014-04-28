Feature: Post
  Scenario: At home page
    Given a user visit the home page
    Given there exist a user
    When they click link Users
    Then they should be directed to user page
    When they click the first link show
    Then they should be directed to user 1 page
    Then they should see post link
    When they click link Post
    Then they should be directed to post page
    Then they should also see home link
    When they click link home
    Then they should be redirected to home

Feature: Post
  Scenario: At home page
    Given a user visit the home page
    Given there exist a user
    Given a user visit the home page
    When they click link Sign in
    Then they should be redirected to the sign in page
    When they complete sign in form
    Then they click link sign in!
    Then they should be redirected to the user profile page
    When they click the first link show
    Then they should be directed to user 1 page
    Then they should see post link
    When they click link Post
    Then they should be directed to post page
    Then they should also see home link
    When they click link home
    Then they should be redirected to home

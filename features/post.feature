Feature: Post
  Scenario: At home page
    Given a user visit the home page
    When they click link Users
    They should be directed to user page
    When they click 
    They should also see post link
    When they click link Post
    They should be directed to post page
    They should also see home link
    When they click link home
    They should be redirected to home

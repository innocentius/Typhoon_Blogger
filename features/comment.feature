Feature: Comment
  Scenario: At home page
    
    Given there exist a user
    Given there exist a post
    When they are on the user show page
    Then they should see post link
    When they click link Post
    Then they should be directed to post page
    When they click the first link show
    Then they should be directed to post show page
    Then they should see comments link
    When they click link Comments
    Then they should be directed to comment page
    Then they should also see home link
    When they click link home
    Then they should be redirected to home
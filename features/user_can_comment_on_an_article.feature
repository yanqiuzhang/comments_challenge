Feature: User can comment on an article
  
  As a fairly intelligent User
  In order to share my views with other ignorant reader
  Visitors should be able to comment on an article

Background: 
   Given the following articles exists
      | title                | content                          |
      | Learn Rails 5        | Build awesome rails applications |
   When I visit the article comment site
  
Scenario: Visitor submits a comment 
   Given I am reading the article titled "Learn Rails 5"
   And I fill in "Email" with "my@email.com"
   And I fill in "Commenter" with "This is awesome!"
   And I click "Send comment"
   Then I should see "This is awesome!"  
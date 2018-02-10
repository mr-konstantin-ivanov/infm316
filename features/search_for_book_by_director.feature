Feature: search for books by description
 
  As a book buff
  So that I can find books with my favorite description
  I want to include and serach on description information in books I enter
 
Background: books in database
 
  Given the following books exist:
  | title        | genre | description     | publish_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
 
Scenario: add description to existing book
  When I go to the edit page for "Alien"
  And  I fill in "Description" with "Ridley Scott"
  And  I press "Update Book Info"
  Then the description of "Alien" should be "Ridley Scott"
 
Scenario: find book with same description
  Given I am on the details page for "Star Wars"
  When  I follow "Find Books With Same Description"
  Then  I should be on the Similar Books page for "Star Wars"
  And   I should see "THX-1138"
  But   I should not see "Blade Runner"
 
Scenario: can't find similar books if we don't know description (sad path)
  Given I am on the details page for "Alien"
  Then  I should not see "Ridley Scott"
  When  I follow "Find Books With Same Description"
  Then  I should be on the home page
  And   I should see "'Alien' has no description info"
Feature: User can manually add book
 
Scenario: Add a book
  Given I am on the RottenPotatoes home page
  When I follow "Add new book"
  Then I should be on the Create New Book page
  When I fill in "Title" with "Men In Black"
  And I select "PG-13" from "Genre"
  And I press "Save Changes"
  Then I should be on the RottenPotatoes home page
  And I should see "Men In Black"
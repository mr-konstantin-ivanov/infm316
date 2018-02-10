# add to the search_for_books_by_description_steps.rb
 
Then(/^the description of "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
  Book.find_by_title(arg1).description == arg2
end
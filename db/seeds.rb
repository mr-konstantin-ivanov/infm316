# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Seed the RottenPotatoes DB with some books.
more_books = [
  {:title => 'Aladdin1', :genre => 'Action and Adventure',
    :publish_date => '25-Nov-1992', :description => 'Test1', :isbn => '1234'},
    {:title => 'Aladdin2', :genre => 'Horror',
      :publish_date => '25-Nov-1993', :description => 'Test2', :isbn => '12345'},
      {:title => 'Aladdin3', :genre => 'Action and Adventure',
        :publish_date => '25-Nov-1994', :description => 'Test3', :isbn => '123456'},
        {:title => 'Aladdin4', :genre => 'Drama',
          :publish_date => '25-Nov-1995', :description => 'Test4', :isbn => '1234567'},
          {:title => 'Aladdin5', :genre => 'Science Fiction',
            :publish_date => '25-Nov-1996', :description => 'Test5', :isbn => '12345678'}
]
 
more_books.each do |book|
  Book.create!(book)
end
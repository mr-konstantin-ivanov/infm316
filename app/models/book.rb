class Book < ActiveRecord::Base
  def self.all_genres ; %w[Science\ Fiction Drama Action\ and\ Adventure Romance Mystery Horror] ; end #  shortcut: array of strings
  validates :title, :presence => true
  validates :publish_date, :presence => true
  validates :genre, :inclusion => {:in => Book.all_genres}
 
  def self.similar_books(book)
    Book.where description: book.description
  end

end
require "rails_helper"

describe Book do
  describe "search for similar books" do
    before :each do
      @book1 = FactoryBot.create(:book, title: 'Catch me if you can', description: 'Steven Spielberg')
      @book2 = FactoryBot.create(:book, title: "Schindler's List", description: 'Steven Spielberg')
      @book3 = FactoryBot.create(:book, title: 'Seven', description: 'David Fincher') 
    end
    it 'it should find books with the same description' do
        expect(Book.similar_books(@book1)).to eq([@book1, @book2])
        expect(Book.similar_books(@book3)).to eq([@book3])
    end
    it 'it should not find books with different description' do
        expect(Book.similar_books(@book1)).to_not include([@book3])
        expect(Book.similar_books(@book3)).to_not include([@book1, @book2])
    end
  end
end

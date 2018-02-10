class CreateBooks < ActiveRecord::Migration
  def change
    create_table 'books' do |t|
      t.string   "title"
      t.string   "genre"
      t.string   "isbn"    
      t.text     "description"
      t.datetime "publish_date"
      # Add fields that let Rails automatically keep track
      # of when books are added or modified:
      t.timestamps
    end
  end
end

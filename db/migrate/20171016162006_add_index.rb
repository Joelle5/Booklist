class AddIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :bookmarks, :book_id 
  end
end

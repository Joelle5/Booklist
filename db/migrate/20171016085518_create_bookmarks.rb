class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|
      t.integer :book_id
      t.integer :page_num
      t.string :decrip

      t.timestamps
    end
  end
end

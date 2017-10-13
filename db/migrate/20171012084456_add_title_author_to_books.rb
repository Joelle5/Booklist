class AddTitleAuthorToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :title, :string, null: false
    add_column :books, :author, :string, null: false
    add_column :books, :genre, :string
  end
end

class AddIndexes < ActiveRecord::Migration[6.0]
  def change
    add_index :authors_books, [:book_id, :author_id]
    add_index :books, :category_id
  end
end

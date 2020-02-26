class CreateAuthorsBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :authors_books do |t|
      t.integer :author_id, index: true
      t.integer :book_id, index: true
    end
  end
end

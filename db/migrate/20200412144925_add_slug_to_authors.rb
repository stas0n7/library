class AddSlugToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :slug, :string
    add_index :authors, :slug, unique: true
  end
end

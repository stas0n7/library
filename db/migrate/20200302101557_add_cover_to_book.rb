class AddCoverToBook < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :cover, :string
  end
end

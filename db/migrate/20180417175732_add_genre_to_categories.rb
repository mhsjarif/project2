class AddGenreToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :genre, :string
  end
end

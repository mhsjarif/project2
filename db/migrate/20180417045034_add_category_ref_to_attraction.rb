class AddCategoryRefToAttraction < ActiveRecord::Migration[5.1]
  def change
    add_reference :attractions, :category, foreign_key: true
  end
end

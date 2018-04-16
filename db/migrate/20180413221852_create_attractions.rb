class CreateAttractions < ActiveRecord::Migration[5.1]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :ride_image
      t.text :description
      t.integer :avg_rating
      t.integer :rec_count

      t.timestamps
    end
  end
end

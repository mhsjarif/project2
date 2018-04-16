class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.datetime :created_at
      t.text :content
      t.integer :rating
      t.boolean :recommend

      t.timestamps
    end
  end
end

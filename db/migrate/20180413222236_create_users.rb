class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :location
      t.string :password
      t.string :image
      t.string :quote

      t.timestamps
    end
  end
end

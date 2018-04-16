class CreateHelpfuls < ActiveRecord::Migration[5.1]
  def change
    create_table :helpfuls do |t|
      t.integer :h_count

      t.timestamps
    end
  end
end

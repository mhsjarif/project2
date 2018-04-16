class CreateUnhelpfuls < ActiveRecord::Migration[5.1]
  def change
    create_table :unhelpfuls do |t|
      t.integer :uh_count

      t.timestamps
    end
  end
end

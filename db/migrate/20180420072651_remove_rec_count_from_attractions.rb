class RemoveRecCountFromAttractions < ActiveRecord::Migration[5.1]
  def change
    remove_column :attractions, :rec_count, :integer
  end
end

class RemoveAvgRatingFromAttractions < ActiveRecord::Migration[5.1]
  def change
    remove_column :attractions, :avg_rating, :integer
  end
end

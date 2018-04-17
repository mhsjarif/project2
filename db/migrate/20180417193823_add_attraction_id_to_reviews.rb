class AddAttractionIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :reviews, :attraction, foreign_key: true
  end
end

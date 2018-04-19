class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :avatar, foreign_key: true
  end
end

class CreateAvatars < ActiveRecord::Migration[5.1]
  def change
    create_table :avatars do |t|
      t.string :avatar_name
      t.string :avatar_image

      t.timestamps
    end
  end
end

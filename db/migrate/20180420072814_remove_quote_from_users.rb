class RemoveQuoteFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :quote, :string
  end
end

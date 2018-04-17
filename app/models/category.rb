class Category < ApplicationRecord
    has_many :attractions, dependent: :destroy
end

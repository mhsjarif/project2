class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true, uniqueness: true
    has_many :reviews, dependent: :destroy
    belongs_to :avatar
end

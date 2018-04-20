class Attraction < ApplicationRecord
    has_many :reviews, dependent: :destroy
    belongs_to :category

    def tcount
        @count = 0
        self.reviews.each do |review|
            @count = @count + 1 if review.recommend == true
        end
    end

    def fcount
        @count = 0
        self.reviews.each do |review|
            @count = @count + 1 if review.recommend == false
        end
    end
end

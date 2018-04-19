class ReviewsController < ApplicationController
    def create
        @review = Review.new(review_params)
        @review.user = current_user
        @review.attraction_id = params[:attraction_id]
        @review.save
        redirect_to attraction_path(params[:attraction_id])
    end

    private
        def review_params
            params.require(:review).permit(:rating, :content, :recommend)
        end
end
class ReviewsController < ApplicationController
    def create
        @review = Review.new(review_params)
        @review.rating = params[:rating]
        @review.recommend = params[:recommend]
        @review.user = current_user
        @review.attraction_id = params[:attraction_id]
        @review.save
        redirect_to attraction_path(params[:attraction_id])
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy 
        redirect_to attraction_path(@review.attraction_id)
    end

    private
        def review_params
            params.require(:review).permit(:content, :rating, :recommend)
        end
end
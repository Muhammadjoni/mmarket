class ReviewsController < ApplicationController
    before_action :set_product, only: [:destroy]

    # GET /products/:product_id/reviews/new 
    # // make sure to refactor this and recode the logic 
    def create
        @review = @product.reviews.new(review_params)
        @review.user = current_user

        if @review.save
            redirect_to product_path(@product), notice: "Review was successfully created."
        else
            render :new, status: :unprocessable_entity
        end
    end

    def top 
        @reviews = Review.where("rating >= ?", 4).first(3)
    end 

    def destroy
        @review.destroy
        redirect_to restaurant_path(@review.restaurant), status: :see_other
      end

    private

    def review_params
        params.require(:review).permit(:rating, :comment)
    end

    def set_product
        @review = Review.find(params[:review_id])
    end

end

class ProductsController < ApplicationController

    before_action :set_product, only: [:show, :edit, :update, :destroy]

    def index
        @products = Product.all
    end

    def show 
        # @reviews = @product.reviews
        # @review = Review.new
    end

    def new 
        @product = Product.new
    end 

    def create
        @product = Product.new(product_params)
        if @product.save
            redirect_to products_path(@product), notice: "Product was successfully created."
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @product.update(product_params)
            redirect_to products_path(@product), notice: "Product was successfully updated."    
        end
    end

    def destroy
        @product.destroy

        redirect_to products_path, status: :see_other
    end

    # def top
    #     # @products = Product.all.order(price: :desc).limit(3)
    #     # render :index
    #     @products = Product.where(rating: 5)
    # end
    
    private

    def product_params
        params.require(:product).permit(:name, :price, :stock, :in_stock, photos: [])   
    end

    def set_product
        @product = Product.find(params[:id])
    end

end

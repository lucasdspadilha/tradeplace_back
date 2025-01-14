class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :update, :destroy]
  
    # GET /products
    def index
      @products = Product.all
      render json: @products
    end
  
    # GET /products/:id
    def show
      render json: @product
    end
  
    # POST /products
    def create
      @product = Product.new(product_params)
      if @product.save
        render json: @product, status: :created
      else
        render json: @product.errors, status: :unprocessable_entity
      end
    end
  
    # PUT /products/:id
    def update
      if @product.update(product_params)
        render json: @product
      else
        render json: @product.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /products/:id
    def destroy
      @product.destroy
    end
  
    private
  
    def set_product
      @product = Product.find(params[:id])
    end
  
    def product_params
      params.require(:product).permit(:product_img, :product_name, :rating_value, :product_value, :qty_available, :qty_sold)
    end
  end
  
class ProductsController < ApplicationController

  before_action :find_brand
  before_action :find_product, only: [:show]


  def new
    @product = @brand.products.new
  end

  def create
    @product = @brand.products.new product_params
    if @product.save
      redirect_to brand_product_path(@brand, @product)
    else
      render 'new'
    end
  end

  def show
    

  end

  private

    def find_brand
      @brand = Brand.find(params[:brand_id])
    end

    def find_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :description)
    end


end

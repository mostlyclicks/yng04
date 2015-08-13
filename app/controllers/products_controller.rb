class ProductsController < ApplicationController

  before_action :find_brand
  before_action :find_product, only: [:show, :edit, :update, :destroy]


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

  def edit

  end

  def update
    if @product.update product_params
      redirect_to brand_product_path(@brand, @product), notice: "Product was succesfully updated!"
    else
      render 'edit'
    end
  end

  private

    def find_brand
      @brand = Brand.find(params[:brand_id])
    end

    def find_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :description, :sku, :retail_price, :map_price, :color_options, :size_options)
    end


end

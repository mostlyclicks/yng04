class BrandsController < ApplicationController

  #before_action :authenticate_brand!, only: [:index, :show]
  before_filter :require_permission, except: :index
  
  def index
    @brands = Brand.all
  end

  def show
    @brand = Brand.find(params[:id])
  end

  private 

    def require_permission
      @brand = Brand.find(params[:id])
      if current_brand != @brand
        redirect_to root_path, notice: "Sorry you do not have access."
      end
    end

end

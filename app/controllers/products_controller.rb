class ProductsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:Product).permit(:title, :category, :description, :quantity, :size, :photo, :price)
  end

end

class ProductsController < ApplicationController

  # GET /products?page=:page

  def index
    products = Product.page(params[:page])
    render json: products
  end

  #  GET /products/:id
  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end
end

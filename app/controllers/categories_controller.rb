class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    params.permit(:id)
    @category = Category.find(params[:id])
    @title = @category.category_name
    @posts = @category.posts
  end
end

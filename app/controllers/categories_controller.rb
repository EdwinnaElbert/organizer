class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def create
    @category = Category.new(params[:category])
  end

  private

  def category_params
    params.require(:category).permit(:title, :color)
  end
end

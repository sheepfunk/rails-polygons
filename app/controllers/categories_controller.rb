class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    head :no_content
  end

  private

  def category_params
    params.require(:category).permit(:name, :amount, :polygon_id).merge(polygon_id:params[:polygon_id])
  end
  
end

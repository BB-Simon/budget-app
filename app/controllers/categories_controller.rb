class CategoriesController < ApplicationController
  def index
    @categories = current_user.categories
  end

  def show
    @category = current_user.categories.find(params[:id])
    @expenses = @category.expenses.order(created_at: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.new(category_params)
    if @category.save
      redirect_to root_path, notice: 'Category created succefully'
    else
      render :new, alert: @category.errors.full_messages[0]
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end

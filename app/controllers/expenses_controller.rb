class ExpensesController < ApplicationController
  def new
    @category = current_user.category.find(params[:category_id])
    @expense = Expense.new
  end

  def create
    @category = current_user.category.find(params[:category_id])
    @expense = current_user.expense.new(expense_params)
    if @expense.save
      redirect_to category_path(@category), notice: 'Expense is added'
    else
      render :new
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount, category_ids: [])
  end
end

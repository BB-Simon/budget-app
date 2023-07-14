require 'rails_helper'

RSpec.describe 'Expenses', type: :request do
  include Devise::Test::IntegrationHelpers
  before :each do
    @user = User.create(name: 'Simon', email: 'simon@example.com', password: 'password')
    @category = Category.create(author: @user, name: 'test category', icon: 'https://res.cloudinary.com/bbsimon/image/upload/v1689326999/mc_p7xmvv.png')
    sign_in @user
  end
  describe 'GET /new' do
    it 'returns http success' do
      get new_category_expense_path(@category)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST :create' do
    it 'creates a new expense' do
      expense_attributes = { name: 'eat pizza', amount: 20 }

      post category_expenses_path(@category), params: { expense: expense_attributes }

      expect(response.status).to eq(302)
      expect(Expense.last.name).to eq('eat pizza')
      expect(Expense.last.amount).to eq(20.0)
    end
  end
end

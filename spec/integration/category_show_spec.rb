require 'rails_helper'

RSpec.describe 'Category/show', type: :system do
  describe 'category show page' do
    before do
      @user = User.create(name: 'Simon', email: 'simon@example.com', password: 'password')
      @category = Category.create(author: @user, name: 'test category1', icon: 'https://res.cloudinary.com/bbsimon/image/upload/v1689327019/nike_adszjr.png')
      @expense = Expense.new(author: @user, name: 'test expense', amount: 20, categories: [@category])
      @expense.save
      visit category_path(@category)
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      click_button 'Log in'
    end
    it 'Category name' do
      expect(page).to have_content('test category1')
    end
    it 'Category Icon' do
      expect(page).to have_css('img[src="https://res.cloudinary.com/bbsimon/image/upload/v1689327019/nike_adszjr.png"]')
    end
    it 'Category expense total' do
      expect(page).to have_content('$20.0')
    end
    it 'When I click on a add expense, I am redirected to that category form page.' do
      click_button 'Add Expense'
      expect(page).to have_current_path(new_category_expense_path(@category))
    end
  end
end

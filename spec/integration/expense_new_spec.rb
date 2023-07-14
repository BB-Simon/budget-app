require 'rails_helper'

RSpec.describe 'Product/create', type: :system do
  describe 'prosuct create page' do
    before do
      @user = User.create(name: 'Simon', email: 'simon@example.com', password: 'password')
      @category = Category.create(author: @user, name: 'test category', icon: 'https://res.cloudinary.com/bbsimon/image/upload/v1689327019/nike_adszjr.png')

      visit new_category_expense_path(@category)
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      click_button 'Log in'

      fill_in 'Name', with: 'test expense'
      fill_in 'Amount', with: 20
      select @category.name, from: 'expense_category_ids'
      click_button 'Create'
    end
    it 'expense name' do
      expect(page).to have_content('test expense')
    end
    it 'expense amount' do
      expect(page).to have_content('$20.0')
    end
  end
end

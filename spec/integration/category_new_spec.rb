require 'rails_helper'

RSpec.describe 'Category/create', type: :system do
  describe 'category create page' do
    before do
      @user = User.create(name: 'Simon', email: 'simon@example.com', password: 'password')
      # @product = Product.new(author: @user, name: "test product", amount: 20, groups: [@group])
      # @product.save
      visit new_category_path
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      click_button 'Log in'

      fill_in 'Name', with: 'test category'
      fill_in 'Icon', with: 'https://res.cloudinary.com/bbsimon/image/upload/v1689327019/nike_adszjr.png'
      click_button 'Create'
    end
    it 'Category name' do
      expect(page).to have_content('test category')
    end
    it 'Category Icon' do
      expect(page).to have_css('img[src="https://res.cloudinary.com/bbsimon/image/upload/v1689327019/nike_adszjr.png"]')
    end
  end
end

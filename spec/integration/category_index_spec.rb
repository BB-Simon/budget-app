require 'rails_helper'

RSpec.describe 'Category/Index.', type: :system do
  describe 'category index page' do
    before do
      @user = User.create(name: 'Simon', email: 'simon@example.com', password: 'password')
      @category = Category.create(author: @user, name: 'test category1', icon: 'https://res.cloudinary.com/bbsimon/image/upload/v1689326999/mc_p7xmvv.png')
      Category.create(author: @user, name: 'test category2', icon: 'https://res.cloudinary.com/bbsimon/image/upload/v1689327019/nike_adszjr.png')
      visit categories_path
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      click_button 'Log in'
    end
    it 'Category list' do
      expect(page).to have_content('test category1')
      expect(page).to have_content('test category2')
    end
    it 'Category Icon' do
      expect(page).to have_css('img[src="https://res.cloudinary.com/bbsimon/image/upload/v1689326999/mc_p7xmvv.png"]')
      expect(page).to have_css('img[src="https://res.cloudinary.com/bbsimon/image/upload/v1689327019/nike_adszjr.png"]')
    end
    it 'When I click on a category, I am redirected to that category show page.' do
      click_link 'test category1'
      expect(page).to have_current_path(category_path(@category))
    end
  end
end

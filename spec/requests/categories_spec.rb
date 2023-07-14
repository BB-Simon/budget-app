require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  include Devise::Test::IntegrationHelpers
  before :each do
    @user = User.create(name: 'Simon', email: 'simon@example.com', password: 'password')
    sign_in @user
  end
  describe 'GET /index' do
    it 'returns http success' do
      get '/categories'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      Category.create(author: @user, name: 'test category', icon: 'https://res.cloudinary.com/bbsimon/image/upload/v1689326999/mc_p7xmvv.png')
      get category_path(Category.last)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST :create' do
    it 'creates a new category' do
      category_attributes = { name: 'test category', icon: 'https://res.cloudinary.com/bbsimon/image/upload/v1689326999/mc_p7xmvv.png' }

      post '/categories', params: { category: category_attributes }

      expect(response.status).to eq(302)
      expect(Category.last.name).to eq('test category')
      expect(Category.last.icon).to eq('https://res.cloudinary.com/bbsimon/image/upload/v1689326999/mc_p7xmvv.png')
    end
  end
end

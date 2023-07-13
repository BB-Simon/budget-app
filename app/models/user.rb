class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true
  has_many :expense, foreign_key: 'author_id', dependent: :destroy
  has_many :category, foreign_key: 'author_id', dependent: :destroy
end

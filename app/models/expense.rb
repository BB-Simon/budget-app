class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :category

  validates :name, presence: true
  validates :amount, presence: true
end

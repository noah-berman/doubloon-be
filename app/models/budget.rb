class Budget < ApplicationRecord
  has_many :budget_categories
  has_many :transactions, through: :budget_categories
  belongs_to :user


end

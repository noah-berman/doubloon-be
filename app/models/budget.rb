class Budget < ApplicationRecord
  has_many :budget_categories
  belongs_to :user
end

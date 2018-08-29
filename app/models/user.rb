class User < ApplicationRecord
  has_many :budgets
  has_many :chart_preferences
end

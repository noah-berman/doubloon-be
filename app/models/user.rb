class User < ApplicationRecord
  has_secure_password
  validates :username, presence: { case_sensitive: false}
  has_many :budgets
  has_many :chart_preferences
end

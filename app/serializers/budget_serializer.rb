class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :value, :period_in_days, :budget_categories
  has_many :budget_categories
  belongs_to :user
end

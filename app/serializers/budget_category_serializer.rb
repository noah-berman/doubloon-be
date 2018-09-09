class BudgetCategorySerializer < ActiveModel::Serializer
  attributes :id, :budget_id, :title, :value
  has_many :transactions
  belongs_to :budget
end

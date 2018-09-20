class BudgetCategorySerializer < ActiveModel::Serializer
  attributes :id, :budget_id, :title, :transactions
  has_many :transactions
  belongs_to :budget
end

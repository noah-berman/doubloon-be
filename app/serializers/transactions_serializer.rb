class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :budget_category_id, :description, :value
  belongs_to :budget_category
end

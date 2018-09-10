class RemoveValueFromBudgetCategory < ActiveRecord::Migration[5.2]
  def change
    remove_column :budget_categories, :value, :integer
  end
end

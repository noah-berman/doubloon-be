class CreateBudgetCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :budget_categories do |t|
      t.integer :budget_id
      t.string :title
      t.integer :value

      t.timestamps
    end
  end
end

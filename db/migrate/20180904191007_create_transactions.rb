class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :budget_category_id
      t.string :description
      t.integer :value
      t.datetime :modified_at, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
  end
end

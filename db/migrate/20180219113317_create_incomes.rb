class CreateIncomes < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
      t.integer :user_id
      t.float :income_money
      t.string :description
      t.string :category
      t.date :income_date
      
      t.timestamps
    end
  end
end

class CreateOutcomes < ActiveRecord::Migration[5.1]
  def change
    create_table :outcomes do |t|
      t.integer :user_id
      t.float :outcome_money
      t.string :description
      t.string :category
      t.date :outcome_date

      t.timestamps
    end
  end
end

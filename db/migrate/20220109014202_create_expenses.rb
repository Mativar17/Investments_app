class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.date :date
      t.string :description
      t.integer :type
      t.integer :amount

      t.timestamps
    end
  end
end

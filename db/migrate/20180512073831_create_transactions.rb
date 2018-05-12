class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :amount
      t.integer :account_id
      t.string :trans_type
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

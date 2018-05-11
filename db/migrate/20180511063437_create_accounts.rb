class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :holder_name
      t.string :mobile
      t.text :address
      t.float :balance

      t.timestamps null: false
    end
  end
end

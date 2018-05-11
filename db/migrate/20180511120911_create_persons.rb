class CreatePersons < ActiveRecord::Migration
  def change
    create_table :persons do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.string :address
    end
  end
end

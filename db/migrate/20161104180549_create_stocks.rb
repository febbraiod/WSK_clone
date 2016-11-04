class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :company_name
      t.float :starting_value
      t.float :min_value
      t.float :max_value
      t.integer :category_id

      t.timestamps null: false
    end
  end
end

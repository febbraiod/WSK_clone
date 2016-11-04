class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :volatility_index

      t.timestamps null: false
    end
  end
end

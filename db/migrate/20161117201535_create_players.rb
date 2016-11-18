class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.decimal :bank_account, precision: 8, scale: 2
      t.decimal :net_worth, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end

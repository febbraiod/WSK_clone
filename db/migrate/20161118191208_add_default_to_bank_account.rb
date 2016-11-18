class AddDefaultToBankAccount < ActiveRecord::Migration
  def change
    change_column :players, :bank_account, :decimal, precision: 10, scale: 2, :default => 500000.00
  end
end

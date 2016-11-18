class RemoveNetWorthFromPlayers < ActiveRecord::Migration
  def change

    remove_column :players, :net_worth

  end
end

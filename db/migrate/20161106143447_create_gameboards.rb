class CreateGameboards < ActiveRecord::Migration
  def change
    create_table :gameboards do |t|
      t.integer :week, :default => 1
      t.decimal :ATNT, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Boing, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Xearox, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :YBM, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Yapple, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Bethleham, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Chryer, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :PanAm, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Strayhound, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Teradying, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :AmericanDepress, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Exconrail, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :FiredmansFund, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Reebucks, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :CharlesSchlob, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Carnivore, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Centipede, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Coughman, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Marrinot, :precision => 5, :scale => 2, array: true, default: []
      t.decimal :Rattel, :precision => 5, :scale => 2, array: true, default: []

      t.timestamps null: false
    end
  end
end
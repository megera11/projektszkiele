class Changetype1 < ActiveRecord::Migration[6.0]
  def change
   change_column :eats, :ilosc, :decimal, :precision => 5, :scale => 2
 end

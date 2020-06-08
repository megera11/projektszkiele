class Changetype1 < ActiveRecord::Migration[6.0]
  def up
   change_column :eats, :ilosc, :decimal, :precision => 5, :scale => 2
 end

 def down
   change_column :eats, :ilosc, :integer
end

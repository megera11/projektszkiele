class CreateEats < ActiveRecord::Migration[6.0]
  def change
    create_table :eats do |t|
      t.integer :id_uzytkownika
      t.date :data
      t.integer :id_pokarmu
      t.integer :ilosc

      t.timestamps
    end
  end
end

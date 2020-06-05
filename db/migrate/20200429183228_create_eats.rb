class CreateEats < ActiveRecord::Migration[6.0]
  def change
    create_table :eats do |t|
      t.integer :user_id
      t.date :data
      t.integer :pokarmy_id
      t.integer :ilosc
      t.string :plec
      t.integer :rok_urodzenia
      t.integer :prop_kcal
      t.timestamps
    end
  end
end

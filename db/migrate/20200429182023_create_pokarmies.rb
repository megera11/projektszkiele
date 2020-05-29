class CreatePokarmies < ActiveRecord::Migration[6.0]
  def change
    create_table :pokarmies do |t|
      t.string :nazwa
      t.decimal :kalorie, precision: 4, scale: 1
      t.decimal :bialko, precision: 3, scale: 1
      t.decimal :weglowodany, precision: 3, scale: 1
      t.decimal :tluszcz, precision: 3, scale: 1

      t.timestamps
    end
    
  end


end

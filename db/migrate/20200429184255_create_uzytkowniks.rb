class CreateUzytkowniks < ActiveRecord::Migration[6.0]
  def change
    create_table :uzytkowniks do |t|
      t.integer :id_uzytkownika
      t.integer :wzrost
      t.decimal :waga, precision: 4, scale: 1
      t.decimal :bmi, precision: 3, scale: 1
      t.integer :kcaldospoz

      t.timestamps
    end
  end
end

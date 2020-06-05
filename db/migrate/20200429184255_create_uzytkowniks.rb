class CreateUzytkowniks < ActiveRecord::Migration[6.0]
  def change
    create_table :uzytkowniks do |t|
      t.integer :user_id
      t.integer :wzrost
      t.decimal :waga, precision: 4, scale: 1
      t.decimal :bmi, precision: 10, scale: 1
      t.decimal :kcaldospoz, precision: 10, scale: 1
      t.string :plec
      t.integer :rok_urodzenia
      t.decimal :prop_kcal, precision: 10, scale: 1

      t.timestamps
    end
  end
end

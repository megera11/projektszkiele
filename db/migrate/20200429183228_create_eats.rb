class CreateEats < ActiveRecord::Migration[6.0]
  def change
    create_table :eats do |t|
      t.integer :user_id
      t.date :datatime
      t.integer :pokarmy_id
      t.integer :ilosc

      t.timestamps
    end
  end
end

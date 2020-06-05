class Addforeignkey < ActiveRecord::Migration[6.0]
    def change
      add_foreign_key :eats, :pokarmies
    end
  end

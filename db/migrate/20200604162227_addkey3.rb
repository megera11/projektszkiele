class Addkey3 < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :eats, :users
  end
end

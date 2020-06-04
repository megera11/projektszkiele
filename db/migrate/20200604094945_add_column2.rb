class AddColumn2 < ActiveRecord::Migration[6.0]
  def change
    add_column :uzytkowniks, :prop_kcal, :int
  end
end

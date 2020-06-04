class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :eats, :id_uzytkownika, :user_id
    rename_column :eats, :id_pokarmu, :pokarmy_id
  end
end

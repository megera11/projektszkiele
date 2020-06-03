class SetUpdatedAtValues < ActiveRecord::Migration[6.0]
  def change
   rename_column :uzytkowniks, :id_uzytkownika, :user_id
  end


end

class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :uzytkowniks, :plec, :string
    add_column :uzytkowniks, :rok_urodzenia, :int
  end
end

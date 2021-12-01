class NameChange3 < ActiveRecord::Migration[6.0]
  def change
    rename_table :twi_controlls, :posts
  end
end

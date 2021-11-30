class NameChange2 < ActiveRecord::Migration[6.0]
  def change
    rename_table :twicontrolls, :twi_controlls
  end
end

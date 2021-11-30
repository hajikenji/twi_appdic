class NameChange < ActiveRecord::Migration[6.0]
  def change
    rename_table :twimodels, :twicontrolls
  end
end

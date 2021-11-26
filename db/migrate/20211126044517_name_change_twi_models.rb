class NameChangeTwiModels < ActiveRecord::Migration[6.0]
  def change
    rename_table :twi_models, :twimodels
  end
end

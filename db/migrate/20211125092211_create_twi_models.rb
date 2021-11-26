class CreateTwiModels < ActiveRecord::Migration[6.0]
  def change
    create_table :twi_models do |t|
      t.text :content
    end
  end
end

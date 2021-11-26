class CreateTwiControlls < ActiveRecord::Migration[6.0]
  def change
    create_table :twi_controlls do |t|
      t.text :content
    end
  end
end

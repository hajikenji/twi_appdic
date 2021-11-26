class DropTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :twi_controlls do |t|
      t.text :content
    end
  end
end

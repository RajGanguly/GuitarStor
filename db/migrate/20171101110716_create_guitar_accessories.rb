class CreateGuitarAccessories < ActiveRecord::Migration[5.1]
  def change
    create_table :guitar_accessories do |t|

      t.timestamps
    end
  end
end

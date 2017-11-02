class AddGuitarToGuitarAccessory < ActiveRecord::Migration[5.1]
  def change
    add_reference :guitar_accessories, :guitar, foreign_key: true
  end
end

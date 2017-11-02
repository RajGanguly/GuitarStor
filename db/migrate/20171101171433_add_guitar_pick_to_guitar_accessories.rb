class AddGuitarPickToGuitarAccessories < ActiveRecord::Migration[5.1]
  def change
  	add_column :guitar_accessories, :guitarPick, :string
  end
end

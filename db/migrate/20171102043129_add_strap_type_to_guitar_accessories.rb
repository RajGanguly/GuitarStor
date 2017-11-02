class AddStrapTypeToGuitarAccessories < ActiveRecord::Migration[5.1]
  def change
  	add_column :guitar_accessories, :strapType, :string
  end
end

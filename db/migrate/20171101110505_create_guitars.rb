class CreateGuitars < ActiveRecord::Migration[5.1]
  def change
    create_table :guitars do |t|
      t.string :brandName
      t.string :modelName
      t.string :typeName
      t.string :noOfStrings
      t.integer :price

      t.timestamps
    end
  end
end

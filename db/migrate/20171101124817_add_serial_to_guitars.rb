class AddSerialToGuitars < ActiveRecord::Migration[5.1]
  def change
    add_column :guitars, :serial, :integer
  end
end

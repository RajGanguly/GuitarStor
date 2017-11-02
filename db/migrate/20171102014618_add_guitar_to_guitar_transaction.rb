class AddGuitarToGuitarTransaction < ActiveRecord::Migration[5.1]
  def change
    add_reference :guitar_transactions, :guitar, foreign_key: true
  end
end

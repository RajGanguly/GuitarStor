class CreateGuitarTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :guitar_transactions do |t|
      t.date :buyDate
      t.date :sellDate

      t.timestamps
    end
  end
end

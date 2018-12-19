class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.integer :market_id, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end

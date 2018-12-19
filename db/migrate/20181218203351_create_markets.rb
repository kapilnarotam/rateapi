class CreateMarkets < ActiveRecord::Migration[5.1]
  def change
    create_table :markets do |t|
      t.integer :base_currency_id, foreign_key: true
      t.integer :quoted_currency_id, foreign_key: true

      t.timestamps
    end
  end
end

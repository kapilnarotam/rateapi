class CreateJoinCurrenciesMarkets < ActiveRecord::Migration[5.1]
  def change
    create_table :join_currencies_markets do |t|
      t.string :currencies
      t.string :markets
    end
  end
end

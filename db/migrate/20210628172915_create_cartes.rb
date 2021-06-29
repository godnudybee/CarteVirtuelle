class CreateCartes < ActiveRecord::Migration[6.1]
  def change
    create_table :cartes do |t|
      t.string :card_id
      t.string :string
      t.string :masked_pan
      t.decimal :card_balance
      t.string :card_holder
      t.string :billing_name
      t.string :billing_address
      t.string :billing_city
      t.string :billing_country
      t.string :billing_zip_code
      t.string :card_currency
      t.string :status
      t.string :success
      t.string :billing_state
      t.string :zip_code
      t.string :card_pan
      t.string :cvv
      t.decimal :cardbalance
      t.string :expiration

      t.timestamps
    end
  end
end

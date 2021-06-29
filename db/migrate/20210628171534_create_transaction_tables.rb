class CreateTransactionTables < ActiveRecord::Migration[6.1]
  def change
    create_table :transaction do |t|
      t.string :transaction_Id
      t.decimal :TransactionAmount
      t.decimal :Fee
      t.string :ProductName
      t.string :ProviderResponseCode
      t.string :ProviderResponseMessage
      t.string :ProviderReference
      t.string :UniqueReferenceDetails
      t.string :TransactionReference
      t.string :Status 
      t.decimal :ProductID
      t.string :UniqueReference
      t.string :PaymentReference
      t.string :PaymentType
      t.string :PaymentResponsiveCode
      t.string :PaymentResponsiveMessage
      t.decimal :AmountConfirmed
      t.integer :CurrencyId
      t.string :Narration
      t.string :Indicator
      t.string :DateCreated
      t.string :StatusName
      t.string :Description
      t.string :Currency
      t.string :MerchantName
      t.string :TransactionDescription

      t.timestamps
    end
  end
end

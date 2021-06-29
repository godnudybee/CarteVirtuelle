class CreateOtps < ActiveRecord::Migration[6.1]
  def change
    create_table :otps do |t|
      t.integer :user_id
      t.integer :code

      t.timestamps
    end
  end
end

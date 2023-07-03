class CreateDebitCards < ActiveRecord::Migration[7.0]
  def change
    create_table :debit_cards do |t|
      t.string :card_number
      t.date :expiration_date
      t.string :cvc_code
      t.float :balance
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

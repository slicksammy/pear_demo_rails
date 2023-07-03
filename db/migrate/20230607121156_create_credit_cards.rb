class CreateCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|
      t.string :card_number
      t.date :expiration_date
      t.integer :cvc_code
      t.decimal :balance
      # t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

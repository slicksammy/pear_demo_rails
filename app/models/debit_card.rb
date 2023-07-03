class DebitCard < ApplicationRecord
  belongs_to :user
  validates :card_number, presence: true
  validates :expiration_date, presence: true
  validates :cvc_code, presence: true
  validates :balance, presence: true
end

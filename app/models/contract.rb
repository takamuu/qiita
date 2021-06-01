class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :user_id,         presence: true
  validates :product_id,      presence: true
  validates :product_name,    presence: true
  validates :contract_money,  presence: true
  validates :contract_status, presence: true

  enum contract_status: {
    reservation: 0,
    confirm: 1,
  }
end

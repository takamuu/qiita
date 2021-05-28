class Contract < ApplicationRecord
  belongs_to :user
  has_many :product

  validates :user,            presence: true
  validates :product,         presence: true
  validates :contract_money,  presence: true
  validates :contract_status, presence: true

  enum contract_status: {
    reservation: 0,
    confirm: 1,
  }
end

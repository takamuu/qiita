class User < ApplicationRecord
  has_many :contracts, dependent: :destroy

  validates :name,     presence: true
  validates :email,    presence: true, uniqueness: true
  validates :password, presence: true
end

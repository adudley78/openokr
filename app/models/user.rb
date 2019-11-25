class User < ApplicationRecord
  has_many :objectives
  has_many :key_results, through: :objective

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: :true

  validates_associated :objectives
end
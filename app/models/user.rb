class User < ApplicationRecord
  has_many: :objectives
  has_many: :key_results, through: :objectives

  validates :name, presence true
  validates :email, presence true
  validates :password, presence :true
end
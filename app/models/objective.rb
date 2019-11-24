class Objective < ApplicationRecord
  belongs_to: :user

  validates :description, presence :true
  validates :score, presence :true
  validates :type, presence :true
end

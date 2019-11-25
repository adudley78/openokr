class Objective < ApplicationRecord
  belongs_to :user
  has_many :key_results

  validates :description, presence: :true
  validates :score, presence: :true
  validates :type, presence: :true
end

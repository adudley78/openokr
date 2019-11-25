class KeyResult < ApplicationRecord
  belongs_to :objective
  belongs_to :user

  validates :description, presence: :true
  validates :measure, presence: :true
  validates :due_date, presence: :true
end

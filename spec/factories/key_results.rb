require 'faker'

FactoryBot.define do
  factory :key_result do
    description { Faker::Lorem.word }
    # TODO: rename or delete measure of success from the model
    measure { Faker::Number.decimal(digits: 1) }
    due_date { Faker::Date }
    objective_id { Faker::Number.number(digits: 1) }
    user_id { Faker::Number.number(digits: 1) }
  end
end
require 'faker'

FactoryBot.define do
  factory :objective do
    description { Faker::Lorem.word }
    score { Faker::Number.number(10) }
    label { Faker::Lorem.word }
    type { Faker::Lorem.word }
    created_by { Faker:Number.number(10) }
  end
end
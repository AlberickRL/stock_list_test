FactoryBot.define do
  factory :family do
    family_name { Faker::Name.last_name }
    family_members { Faker::Number.digit }
  end
end
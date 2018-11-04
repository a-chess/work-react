FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    age { rand(0..100) }
    # sex { rand(1..2) }
    email { Faker::Internet.email }
    # address { Faker::Address.name }
    # phon_no { Faker::PhoneNumber.phone_number }
  end
end

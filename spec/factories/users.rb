FactoryBot.define do
  factory :user do
    name { Faker::Lorem.characters(number:20) }
    email { Faker::Internet.email }
    word { Faker::Lorem.characters(number:50) }
    password { 'password' }
    password_confirmation { 'password' }
  end
end

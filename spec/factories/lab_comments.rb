FactoryBot.define do
  factory :lab_comment do
    comment { Faker::Lorem.characters(number:1) }
    user
    lab
  end
end

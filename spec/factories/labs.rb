FactoryBot.define do
  factory :lab do
    title { Faker::Lorem.characters(number:20) }
    introduction { Faker::Lorem.characters(number:1) }
    month { Faker::Lorem.characters(number:1) }
    day { Faker::Lorem.characters(number:1) }
    time { Faker::Lorem.characters(number:1) }
    region { Faker::Lorem.characters(number:1) }
    place { Faker::Lorem.characters(number:1) }
    language { Faker::Lorem.characters(number:1) }
    price { Faker::Number.number(1) }
    people { Faker::Number.number(1) }
    user

  end

end

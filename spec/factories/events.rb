FactoryBot.define do
  factory :event do
    start_date { "2020-02-11 14:26:34" }
    duration { 5 }
    title {Faker::Book.title}
    description {Faker::Lorem.paragraph}
    price { rand(50..600) }
    location { "Caen" }
    user_id { "1" }
  end
end

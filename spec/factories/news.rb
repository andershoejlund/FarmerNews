FactoryBot.define do
  factory :news do
    title { "News." + Faker::Lorem.sentence(5) }
    description { Faker::Lorem.sentence(15) }
    url { Faker::Internet.url }
    type_oh 1
  end
end

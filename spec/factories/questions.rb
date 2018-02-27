FactoryBot.define do
    factory :question do
      title { "Question:" + Faker::Lorem.sentence(5) }
      description { Faker::Lorem.sentence(15) }
      type_oh 1
    end
end

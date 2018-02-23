FactoryBot.define do
    factory :question do
      title { "Question:" + Faker::Lorem.sentence(5) }
      description { Faker::Lorem.sentence(15) }
    end
end

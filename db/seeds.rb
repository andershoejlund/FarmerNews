require 'faker'

User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "password")
User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "password")

3.times do
  News.create(title: Faker::Lorem.sentence(1), user_id: User.first.id)
end

sleep 1

2.times do
  News.create(title: Faker::Lorem.sentence(1), user_id: User.last.id)
end

sleep 1

1.times do
  Question.create(title: Faker::Lorem.sentence(1), description: Faker::Lorem.sentence(12), user_id: User.first.id)
end

sleep 1

2.times do
  Question.create(title: Faker::Lorem.sentence(1), description: Faker::Lorem.sentence(7), user_id: User.last.id)
end

puts  "#{User.count} users created!"

require 'faker'
require 'devise'

user = User.new(username: "peterhoejlund", email: Faker::Internet.email, password: "hejmeddig", password_confirmation: "hejmeddig")
byebug
user.save
user_two = User.create(username: "peterandersen", email: Faker::Internet.email, password: "hejmeddig", password_confirmation: "hejmeddig")
user_two.save

3.times do
  News.create(title: Faker::Lorem.sentence(1), user_id: User.first.id)
end


4.times do
  News.create(title: Faker::Lorem.sentence(1), url: Faker::Internet.url, user_id: User.last.id)
end


1.times do
  Question.create(title: Faker::Lorem.sentence(1), description: Faker::Lorem.sentence(12), user_id: User.first.id)
end


2.times do
  Question.create(title: Faker::Lorem.sentence(1), description: Faker::Lorem.sentence(7), user_id: User.last.id)
end

puts  "#{User.count} users created!"

$LOAD_PATH << File.join(Rails.root + 'db/photos.rb')
$LOAD_PATH << File.join(Rails.root + 'db/address.rb')
require_relative 'photos.rb'
require_relative 'address.rb'
require 'faker'

p "Starting seeds... it takes 1~2 mins"

p "Destroy previous data"
Product.destroy_all
Skill.destroy_all
ProductSkill.destroy_all
User.destroy_all


p "Adding 8 Skills"
skills = []
skills << skill_1 = Skill.create!(name: "massage", remote_photo_url: "https://images.unsplash.com/flagged/photo-1560944527-a4a429848866?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")
skills << skill_2 = Skill.create!(name: "cooking", remote_photo_url: "https://images.unsplash.com/photo-1551218808-94e220e084d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
skills << skill_3 = Skill.create!(name: "singing", remote_photo_url: "https://images.unsplash.com/photo-1522863602463-afebb8886ab2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
skills << skill_4 = Skill.create!(name: "dancing", remote_photo_url: "https://images.unsplash.com/photo-1508700929628-666bc8bd84ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
skills << skill_5 = Skill.create!(name: "driving", remote_photo_url: "https://images.unsplash.com/photo-1550517636-ad7bac40dc28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
skills << skill_6 = Skill.create!(name: "language", remote_photo_url: "https://images.unsplash.com/photo-1555424681-b0ecf4fe19a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")
skills << skill_7 = Skill.create!(name: "clubbing", remote_photo_url: "https://images.unsplash.com/photo-1496337589254-7e19d01cec44?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
skills << skill_8 = Skill.create!(name: "coding", remote_photo_url: "https://images.unsplash.com/photo-1557853197-aefb550b6fdc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80")


p "***remember****"
p "Jay, your account is jay@test.com / 1111111 "
p "johnny, your account is johnny@test.com / 1111111 "
p "***remember****"


p "Adding 12 Users"
users = []
User.create!(email: "jay@test.com", password: "111111", remote_photo_url: "https://res.cloudinary.com/dsvdkyjhh/image/upload/v1574378545/p1110361_wjffbs.jpg")
users << User.create!(email: "johnny@test.com", password: "111111", remote_photo_url: "https://avatars1.githubusercontent.com/u/54996112?v=4")
(0..10).to_a.each do |ele|
  users << user = User.create!(email: Faker::Internet.unique.email, password: "111111", remote_photo_url: "https://images.unsplash.com/photo-1497752531616-c3afd9760a11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80" )
end
random_user = users[rand(users.length)]

products = []
@women_photos.each do |photo|
  products << Product.create!(user: random_user, name: Faker::Name.unique.female_first_name, price: rand(100)*10, city: Faker::Address.city, gender: "female", remote_photo_url: photo)
  # products << Product.create!(user: random_user, name: Faker::Name.unique.female_first_name, price: rand(100)*10, city: @address.sample(1).join(" "), gender: "female", remote_photo_url: photo)
end

p "we have #{products.count} products now"

@men_photos.each do |photo|
  products << Product.create!(user: random_user, name: Faker::Name.unique.male_first_name, price: rand(100)*10, city: Faker::Address.city, gender: "male", remote_photo_url: photo)
  # products << Product.create!(user: random_user, name: Faker::Name.unique.male_first_name, price: rand(100)*10, city: @address.sample(1).join(" "), gender: "male", remote_photo_url: photo)
end
p "we have #{products.count} products now"


p "Connecting Skill with Product"
products.each do |product|
  product_skill = ProductSkill.new
  product_skill.product = product
  product_skill.skill = skills[rand(skills.length)]
  product_skill.save!
end


p "Make johnny get Product"
products.first(2).each do |product|
  booking = Booking.new(status: true)
  booking.product = product
  booking.user = users[1]
  booking.save!
end

products.last(2).each do |product|
  booking = Booking.new
  booking.product = product
  booking.user = users[1]
  booking.save!
end

p "Seed done :D Let's check the page"



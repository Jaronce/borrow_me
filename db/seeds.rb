p "Starting seeds"

p "Destroy previous datas"
Product.destroy_all
Skill.destroy_all
ProductSkill.destroy_all
User.destroy_all


p "Adding New Users"
user_1 = User.new(email: "johnny@test.com", password: "123456", remote_photo_url: "https://avatars1.githubusercontent.com/u/54996112?v=4")
user_1.save!

product_1 = Product.create!(user: user_1, name: "Harry", price: 200, city: "Montreal", gender: "male", remote_photo_url: "https://images.unsplash.com/photo-1552642986-ccb41e7059e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")
product_2 = Product.create!(user: user_1, name: "Emma", price: 300, city: "LA", gender: "female", remote_photo_url: "https://images.unsplash.com/photo-1513207565459-d7f36bfa1222?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2470&q=80")
product_3 = Product.create!(user: user_1, name: "Mike", price: 100, city: "Toronto", gender: "male", remote_photo_url: "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80")

user_2 = User.new(email: "owner2@mail.com", password: "123456", remote_photo_url: "https://images.unsplash.com/photo-1497752531616-c3afd9760a11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80" )
user_2.save!

user_3 = User.new(email: "borrower@mail.com", password: "123456", remote_photo_url: "https://images.unsplash.com/photo-1530126483408-aa533e55bdb2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=802&q=80" )
user_3.save!

p "Adding New Products"
product_4 = Product.create!(user: user_2, name: "Lynn", price: 200, city: "Seoul", gender: "female", remote_photo_url: "https://images.unsplash.com/photo-1500522144261-ea64433bbe27?ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80")
product_5 = Product.create!(user: user_2, name: "Tom", price: 400, city: "Paris", gender: "male", remote_photo_url: "https://images.unsplash.com/photo-1533052249113-2c9d4470e675?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")
product_6 = Product.create!(user: user_2, name: "May", price: 600, city: "London", gender: "female", remote_photo_url: "https://images.unsplash.com/photo-1549383045-95339015bdd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2482&q=80")

p "Adding New Skills"
skill_1 = Skill.create!(name: "massage", remote_photo_url: "https://images.unsplash.com/flagged/photo-1560944527-a4a429848866?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")
skill_2 = Skill.create!(name: "cooking", remote_photo_url: "https://images.unsplash.com/photo-1551218808-94e220e084d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
skill_3 = Skill.create!(name: "singing", remote_photo_url: "https://images.unsplash.com/photo-1522863602463-afebb8886ab2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
skill_4 = Skill.create!(name: "dancing", remote_photo_url: "https://images.unsplash.com/photo-1508700929628-666bc8bd84ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
skill_5 = Skill.create!(name: "driving", remote_photo_url: "https://images.unsplash.com/photo-1550517636-ad7bac40dc28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
skill_6 = Skill.create!(name: "language", remote_photo_url: "https://images.unsplash.com/photo-1555424681-b0ecf4fe19a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")
skill_7 = Skill.create!(name: "clubbing", remote_photo_url: "https://images.unsplash.com/photo-1496337589254-7e19d01cec44?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
skill_8 = Skill.create!(name: "coding", remote_photo_url: "https://images.unsplash.com/photo-1557853197-aefb550b6fdc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80")


p "Connecting Skill with Product"
product_skill_1 = ProductSkill.new
product_skill_1.product = product_1
product_skill_1.skill = skill_1
product_skill_1.save!
product_skill_2 = ProductSkill.new
product_skill_2.product = product_2
product_skill_2.skill = skill_1
product_skill_2.save!
product_skill_3 = ProductSkill.new
product_skill_3.product = product_3
product_skill_3.skill = skill_3
product_skill_3.save!
product_skill_4 = ProductSkill.new
product_skill_4.product = product_4
product_skill_4.skill = skill_4
product_skill_4.save!
product_skill_5 = ProductSkill.new
product_skill_5.product = product_5
product_skill_5.skill = skill_5
product_skill_5.save!
product_skill_6 = ProductSkill.new
product_skill_6.product = product_6
product_skill_6.skill = skill_6
product_skill_6.save!

booking_1 = Booking.new(status: true)
booking_1.product = product_1
booking_1.user = user_3
booking_1.save
booking_2 = Booking.new
booking_2.product = product_2
booking_2.user = user_3
booking_2.save

p "Seed done"

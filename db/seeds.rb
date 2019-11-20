
p "Starting seeds"
User.destroy_all
Product.destroy_all
Skill.destroy_all
ProductSkill.destroy_all

user_1 = User.new(email: "test@test.com", password: "123456", remote_photo_url: "https://images.unsplash.com/photo-1503066211613-c17ebc9daef0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
user_1.save!

product_1 = Product.create!(user: user_1, name: "Harry", price: 200, city: "Montreal", gender: "male", remote_photo_url: "https://images.unsplash.com/photo-1552642986-ccb41e7059e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")
product_2 = Product.create!(user: user_1, name: "Emma", price: 300, city: "LA", gender: "female", remote_photo_url: "https://images.unsplash.com/photo-1513207565459-d7f36bfa1222?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2470&q=80")
product_3 = Product.create!(user: user_1, name: "Mike", price: 100, city: "Toronto", gender: "male", remote_photo_url: "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80")

user_2 = User.new(email: "owner2@mail.com", password: "123456", remote_photo_url: "https://images.unsplash.com/photo-1497752531616-c3afd9760a11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80" )
user_2.save!

user_3 = User.new(email: "borrower@mail.com", password: "123456", remote_photo_url: "https://images.unsplash.com/photo-1530126483408-aa533e55bdb2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=802&q=80" )
user_3.save!

product_4 = Product.create!(user: user_2, name: "Lynn", price: 200, city: "Seoul", gender: "female", remote_photo_url: "https://images.unsplash.com/photo-1500522144261-ea64433bbe27?ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80")
product_5 = Product.create!(user: user_2, name: "Tom", price: 400, city: "Paris", gender: "male", remote_photo_url: "https://images.unsplash.com/photo-1533052249113-2c9d4470e675?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")
product_6 = Product.create!(user: user_2, name: "May", price: 600, city: "London", gender: "female", remote_photo_url: "https://images.unsplash.com/photo-1549383045-95339015bdd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2482&q=80")

skill_1 = Skill.create!(name: "massage")
skill_2 = Skill.create!(name: "cooking")
skill_3 = Skill.create!(name: "singing")
skill_4 = Skill.create!(name: "dancing")
skill_5 = Skill.create!(name: "driving")
skill_6 = Skill.create!(name: "language")
skill_7 = Skill.create!(name: "clubbing")
skill_8 = Skill.create!(name: "coding")
product_skill_1 = ProductSkill.new
product_skill_1.product = product_1
product_skill_1.skill = skill_1
product_skill_1.save!
product_skill_2 = ProductSkill.new
product_skill_2.product = product_2
product_skill_2.skill = skill_2
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

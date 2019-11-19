# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Starting seeds"

User.destroy_all
Product.destroy_all
Skill.destroy_all
ProductSkill.destroy_all
# Product.destroy_all

user = User.new(email: "exemple@mail.com", password: "password123" )
user.save!

product_1 = Product.create!(user: user, name: "Harry", gender: "male", photo: "https://unsplash.com/photos/sYhUhse5uT8")
product_2 = Product.create!(user: user, name: "Mike", gender: "male", photo: "https://unsplash.com/photos/sYhUhse5uT8")
product_3 = Product.create!(user: user, name: "Tom", gender: "male", photo: "https://unsplash.com/photos/sYhUhse5uT8")

product_4 = Product.create!(user: user, name: "Emma", gender: "female", photo: "https://unsplash.com/photos/THIs-cpyebg")
product_5 = Product.create!(user: user, name: "Lynn", gender: "female", photo: "https://unsplash.com/photos/THIs-cpyebg")
product_6 = Product.create!(user: user, name: "May", gender: "female", photo: "https://unsplash.com/photos/THIs-cpyebg")

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




p "Seed done"

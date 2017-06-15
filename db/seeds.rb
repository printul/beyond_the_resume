require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding start"
puts "Adding businesses..."

User.create(email:"qwerty@qwerty.com", password:"qwerty")

#businesses
businesses = [
              {
                name: "Le Wagon",
                address: "14 Elder Street",
                phone_number: "+4434 8756 4220",
                email: "lewagon@lewagon.org",
                industry: "Technology",
                city: "London",
                zipcode: "E1 6BT",
                logo: "logos/lewagon.png"
              },

              {
                name: "The Lounge Bar",
                address: "16 Elder Street",
                phone_number: "+4415 2516 5135",
                email: "jerry@theloungebar.com",
                industry: "Entertainment",
                city: "London",
                zipcode: "E3 9BT",
                logo: "logos/bar.png"
              },

              {
                name: "Mondo Pastry",
                address: "24 Main Street",
                phone_number: "+4454 9216 1337",
                email: "cat@mondopastry.com",
                industry: "Food",
                city: "London",
                zipcode: "L12 1BC",
                logo: "logos/pastry.png"
              },

              {
                name: "Mondo Pastry",
                address: "24 Main Street",
                phone_number: "+4454 9216 1337",
                email: "cat@mondopastry.com",
                industry: "Food",
                city: "London",
                zipcode: "L12 1BC",
                logo: "logos/pastry.png"
              },

            ]

postings = [
            {
              business_id: 1,
              description: "Some kind of description",
              vid_token: "r127799f64dc2207ac2476b5983a4afa",
              title: "Full Stack Web Developer"
            },
            {
              business_id: 2,
              description: "A relaxing intimate space for those looking to escape the hustle and bustle of the city. Customers can sit back, relax and enjoy a drink in the comfort of our newly refurbished retro space. You could as well, if you’re a talented junior bartender looking to get experience in a hard working but fun environment. Drinks are on us!"
              vid_token: "r127799f64dc2207ac2476b5983a4afa",
              title: "Staff"
            }
          ]

businesses.each { |business| Business.create(business) }
postings.each { |posting| Posting.create(posting) }
#creating User for business model

# User.create!({
#   email: "contact@lew.com",
#   password: "123456789",
#   first_name: "Le ",
#   last_name: "Wagon",
#   phone_number: "07515894123",
#   is_business?: true,
#   is_searchable?: true,
#   })


#   Business.create!({
#     name: "Le Wagon",
#     address: "14 Elder Street, London",
#     phone_number: "07515984123",
#     email: "visitlewagon@gmail.com",
#     industry: "Education",
#     user_id: 37,
#     city: "London",
#     zipcode: "E1 6BT"
#   })

#   Video.create!({
#     title: "Le Wagon - change your life",
#     url: "http://res.cloudinary.com/printul/video/upload/v1497392998/lewagon_ek9d67.mp4",
#     image_url: Faker::Internet.url('example.com'),
#     videoable_type: "Business",
#     videoable_id: 37
#   })


#   Posting.create!({
#     title: "Outdoors activity coordinator / TA",
#     description: "We're looking for someone with a spirit of adventure to take over the social activities during our bootcamp,
#     with a view to create a stronger bond between our students and the teachers and the alumni. Coding experience
#     is necessary as you'll be helping in class alongisde organizing awesome outdoors experiences for our students. ",
#     business_id: 1,
#     video_id: 37
#   })


#   Application.create!({
#     title: Faker::Job.title,
#     description: Faker::Lorem.sentence,
#     user_id: 2,
#     posting_id: 1,
#     video_id: 1

#   })



# 10.times do
#   u = User.create!({
#     email: Faker::Internet.email,
#     password: "123456789",
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     phone_number: Faker::PhoneNumber.phone_number,
#     is_business?: Faker::Boolean.boolean,
#     is_searchable?: Faker::Boolean.boolean,
#     resume: Faker::Internet.url
#   })
# end

# puts "users done"

# puts "businesses"

# 10.times do
#   u.create_business!({
#     name: Faker::Company.name,
#     address: Faker::Address.street_address,
#     phone_number: Faker::PhoneNumber.phone_number,
#     email: Faker::Internet.email,
#     industry: Faker::Job.field
#     city: "London",
#     zipcode: "EC1 AE1"
#   })
# end

# puts "businesses done"

# puts "videos"

# 10.times do
#  u.create_video!({
#     title: Faker::Hipster.word,
#     url: Faker::Internet.url('example.com'),
#     description: Faker::Lorem.sentence,
#     videoable_type: videoables[rand(0..1)]
#   })
# end

# puts "videos done"

# puts "postings"

# m = 1
# while m < 20 do
#   Posting.create({
#     title: Faker::Job.title,
#     description: Faker::Lorem.sentence,
#     business_id: rand(10),
#     video_id: m
#   })
#   m += 1
# end

# puts "postings done"

# puts "applications"

# 50.times do
#   Application.create({
#     title: Faker::Job.title,
#     description: Faker::Lorem.sentence,
#     user_id: rand(20),
#     posting_id: rand(3),
#     video_id: rand(50)
#   })
# end

# puts "applications done"

# puts "professions"

# 50.times do
#   Profession.create({
#     name: Faker::Job.title,
#     user_id: rand(20),
#   })
# end

# "professions done"

# puts "skills"

# 60.times do
#   Skill.create({
#     name: Faker::Job.key_skill,
#     profession_id: rand(50),
#   })
# end

# "skills done"

# puts "finished seeding"

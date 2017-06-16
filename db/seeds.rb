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
                name: "White Night",
                address: "10 Downing Street",
                phone_number: "+4403 2101 3489",
                email: "steph@whiteknight.com",
                industry: "Entertainment",
                city: "London",
                zipcode: "A12 4PZ",
                logo: "logos/whiteknight.png"
              },

              {
                name: "Airport Services Ltd",
                address: "32 Coconut Avenue",
                phone_number: "+4497 8942 4092",
                email: "hs@aiportservices.com",
                industry: "Travel",
                city: "London",
                zipcode: "W74 5JX",
                logo: "logos/airport.png"
              },

              {
                name: "Designado",
                address: "5 Gibberish Road",
                phone_number: "+4419 0376 3985",
                email: "designer@Designado.com",
                industry: "Fashion",
                city: "London",
                zipcode: "B3 1IE",
                logo: "logos/designer.png"
              },

               {
                name: "Runners' World",
                address: "7 Seafront Road",
                phone_number: "+4443 0847 3948",
                email: "office@runnersworld.com",
                industry: "Sports",
                city: "London",
                zipcode: "E14 5FG",
                logo: "logos/trail-running-shoe.png"
              },

              {
                name: "Coffee.co",
                address: "24 Hill Road",
                phone_number: "+4412 0923 0985",
                email: "barista@coffee.co",
                industry: "Barista",
                city: "London",
                zipcode: "SW7 6AK",
                logo: "logos/coffee-cup.png"
              },

              {
                name: "Wrist Watchers",
                address: "8 Gloucester Road",
                phone_number: "+4493 1342 8872",
                email: "office@wristwatchers.co.uk",
                industry: "Luxury goods",
                city: "London",
                zipcode: "SW7 6AK",
                logo: "logos/watch.png"
              }


            ]

postings = [
            {
              business_id: 1,
              description: "We change people’s lives by teaching them to code and you can do it too! We’re looking for someone to help us enhance our students’ experiences during the course and since, coding keeps us indoors so much, we need inspiration on how to get more outdoorsy! If you are interested in coding, have a working knowledge of a start-up oriented environment and.. last but not least.. you have a good feel for adventure, show us and we’ll be happy to meet you!",
              vid_token: "r127799f64dc2207ac2476b5983a4afa",
              title: "Teacher Assistant with a sense of adventure"
            },

            {
              business_id: 2,
              description: "A relaxing intimate space for those looking to escape the hustle and bustle of the city. Customers can sit back, relax and enjoy a drink in the comfort of our newly refurbished retro space. You could as well, if you’re a talented junior bartender looking to get experience in a hard working but fun environment. Drinks are on us!",
              vid_token: "r1e78ee6cc3492b69272e13213d16257",
              title: "Bartender"
            },

            {
              business_id: 3,
              description: "One of a kind pastry shop where the aroma conquers even the strongest will. We offer a global selection of freshly made cookies and pastry products, right in the middle of Notting Hill. And now.. We’re expanding! We’re looking for 1 enthusiastic person to join our brilliant Customer Service team, you’ll be working in a dynamic and fun environment and we’re sure you’ll enjoy it! If you love cookies, reach out to us!",
              vid_token: "r1331342e8447ef34140d5e2e83e04f2",
              title: "Baker"
            },

            {
              business_id: 4,
              description: "No-frills, high-ceilinged, 500+ capacity clubbing space with a unique use of lighting and a heavy, heavy sound system. We like to party and hope you do too! Going into summer we’re looking for more staff so if you’re keen on getting your groove on while working, we’re waiting for you!",
              vid_token: "r160479c97d82d696ea6ed6c8c95161b",
              title: "Floor Staff"
            },

            {
              business_id: 5,
              description: "We’re a leading Airport Services provision group in Europe, with facilities and offices in most of the continent’s main airports.
We could tell you we offer services ranging from maintenance of airport infrastructures, special services for aircraft to aircraft refuelling but we’d rather tell you that we love planes. And if you love planes and you’re a Engineer Shift Manager, give us a buzz!",
              vid_token: "r133aa8aa9f7edc176e838f26396b24b",
              title: "Shift Manager"
            },

            {
              business_id: 6,
              description: "We’re a creative and brand strategy agency in London, with a focus on start-up oriented work. We believe simple is best and we always start with a piece of paper and a pen. We’re now looking to add a new member to our growing team so reach out if you’ve just graduated with a degree in Arts or Design and let’s see if you fit!",
              vid_token: "r17af8be85b96231df1e4e3845f5b505",
              title: "Junior Designer"
            },

            {
              business_id: 7,
              description: "We’re all about running and those who love running. We’re a small sports shoes manufacturer targeting those who do not fear the long stretch ahead, the hill coming up or who love waking up in the morning to catch a long stretch of beach unoccupied. If you love running too and you’re looking for a role in a dynamic, agile company, give us a try, we want to hear from you!",
              vid_token: "r18708563842b3a540d90b1400aee598",
              title: "Sales representative"
            },

            {
              business_id: 8,
              description: "Do you wake up every day looking forward to the aroma of freshly ground coffee? So do we! Having started as a small corner coffee shop in South Kensington, we are now in the fortunate position to expand into another chic neighbourhood, Notting Hill. If you’re as passionate as we are about coffee and customer service, we are waiting for you. Send us a quick video showing us your passion and you’ll hear from us.",
              vid_token: "r162a6bf3d46d6f6c415c03aa03b10e3",
              title: "Barista"
            },

            {
              business_id: 9,
              description: "Tempus fugit and we love watching it. This drew us to open our first watch store 10 years ago, since then we grew and we continue to. This means there are some new opportunities for those of you out there who share our passion for fine watchmaking, who enjoy showcasing beautiful timepieces and finding the right watch for the right owner. If you’re a fine salesperson with a refined approach, knowledgeable in watches and with an easy going personality, get in touch.
",
              vid_token: "r113c19f8e22da290de5f21fe2c80cdd",
              title: "Sales"
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

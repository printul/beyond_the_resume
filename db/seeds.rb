require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "start seeding"

User.create({
    email: "user1@gmail.com",
    password: "123456789",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
    business?: Faker::Boolean.boolean,
    searchable?: Faker::Boolean.boolean,
    resume: Faker::Internet.url,
    admin: true
  })

puts "users"

User.create!({
    email: Faker::Internet.email,
    password: "123456789",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
    business?: true,
    searchable?: true,
    resume: Faker::Internet.url
  })

  User.create!({
    email: Faker::Internet.email,
    password: "123456789",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
    business?: false,
    searchable?: true,
    resume: Faker::Internet.url
  })

  Business.create!({
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    industry: Faker::Job.field,
    user_id: 1
  })

  Video.create!({
    title: Faker::Hipster.word,
    url: Faker::Internet.url('example.com'),
    description: Faker::Lorem.sentence,
    videoable_type: "User",
    videoable_id: 2
  })

  Video.create!({
    title: Faker::Hipster.word,
    url: Faker::Internet.url('example.com'),
    description: Faker::Lorem.sentence,
    videoable_type: "Business",
    videoable_id: 1
  })


  Posting.create!({
    title: Faker::Job.title,
    description: Faker::Lorem.sentence,
    business_id: 1,
    video_id: 2

  })


  Application.create!({
    title: Faker::Job.title,
    description: Faker::Lorem.sentence,
    user_id: 2,
    posting_id: 1,
    video_id: 1

  })


  Profession.create!({
    name: Faker::Job.title,
    user_id: 2

  })


  Skill.create!({
    name: Faker::Job.key_skill,
    profession_id: 1
  })

# 10.times do
#   u = User.create!({
#     email: Faker::Internet.email,
#     password: "123456789",
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     phone_number: Faker::PhoneNumber.phone_number,
#     business?: Faker::Boolean.boolean,
#     searchable?: Faker::Boolean.boolean,
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

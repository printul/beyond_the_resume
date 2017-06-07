# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p "start seeding"

user_seed_data = [
  {
    email: "user1@gmail.com",
    password: "123456789",
    first_name: "John",
    last_name: "Doe",
    phone_number: "+417520983938",
    business?: true,
    searchable?: true,
    resume: "http://bullshit.shit"
  },
  {
    email: "user2@gmail.com",
    password: "123456789",
    first_name: "Jane",
    last_name: "Doe",
    phone_number: "+417520983938",
    business?: true,
    searchable?: true,
    resume: "http://bullshit.crap"
  },
  {
    email: "user3@gmail.com",
    password: "123456789",
    first_name: "Jack",
    last_name: "Doe",
    phone_number: "+417520983938",
    business?: true,
    searchable?: true,
    resume: "http://bullshit.caca"
  }
]

business_seed_data = [
  {
    name: "apple",
    address: "Montain View",
    phone_number: "123456789",
    email: "apple@apple.com",
    industry: "apple",
    user_id: 1
  },
  {
    name: "windows",
    address: "Somewhere around Seattle",
    phone_number: "123456789",
    email: "windows@win.com",
    industry: "windows",
    user_id: 2
    },
  {
    name: "linux",
    address: "nyc",
    phone_number: "1234567890",
    email: "linux@g.co",
    industry: "linux",
    user_id: 3
  }
]

video_seed_data = [
  {
    title: "video 1",
    url: "udysa",
    description: "description of video 1",
    videoable_type: "User",
    videoable_id: 1,
  },
  {
    title: "video 2",
    url: "udysa",
    description: "description of video 2",
    videoable_type: "User",
    videoable_id: 2
  },
  {
    title: "video 3",
    url: "udysa",
    description: "description of video 3",
    videoable_type: "User",
    videoable_id: 3
  },
  {
    title: "video 4",
    url: "udysa",
    description: "description of video 4",
    videoable_type: "User",
    videoable_id: 1
  },
  {
    title: "video 5",
    url: "udysa",
    description: "description of video 5",
    videoable_type: "User",
    videoable_id: 2
  },
  {
    title: "video 6",
    url: "udysa",
    description: "description of video 6",
    videoable_type: "Business",
    videoable_id: 3
  },
  {
    title: "video 7",
    url: "udysa",
    description: "description of video 7",
    videoable_type: "Business",
    videoable_id: 1
  },
  {
    title: "video 8",
    url: "udysa",
    description: "description of video 8",
    videoable_type: "Business",
    videoable_id: 2
  },
  {
    title: "video 9",
    url: "udysa",
    description: "description of video 9",
    videoable_type: "Business",
    videoable_id: 3
  },
  {
    title: "video 10",
    url: "udysa",
    description: "description of video 10",
    videoable_type: "Business",
    videoable_id: 1
  },
]

posting_seed_data = [
  {
    title: "This a posting",
    description: "description of the posting",
    business_id: 1,
    video_id: 2,

  },
  {
    title: "This a posting 2",
    description: "description of the posting",
    business_id: 2,
    video_id: 2,

  },
  {
    title: "This a posting 3",
    description: "description of the posting",
    business_id: 1,
    video_id: 2,

  },
  {
    title: "This a posting 4",
    description: "description of the posting",
    business_id: 1,
    video_id: 2,

  },
  {
    title: "This a posting 5",
    description: "description of the posting",
    business_id: 2,
    video_id: 1,

  },
  {
    title: "This a posting 6",
    description: "description of the posting",
    business_id: 1,
    video_id: 2,

  },
  {
    title: "This a posting 7",
    description: "description of the posting",
    business_id: 2,
    video_id: 2,

  },
  {
    title: "This a posting 8",
    description: "description of the posting",
    business_id: 1,
    video_id: 1,

  }
]

user_seed_data.each do |user|
  User.create(user)
end

business_seed_data.each do |biz|
  Business.create(biz)
end

video_seed_data.each do |video|
  Video.create(video)
end

posting_seed_data.each do |post|
  Posting.create(post)
end

p "finished seeding"

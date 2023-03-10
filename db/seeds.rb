# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


kelly = User.create(
    email: "kells@email.com",
    phone_number: "4104440000",
    password_digest: "1234567"
  ) 

robot = User.create(   
    email: "robo@email.com",
    phone_number: "1112222000",
    password_digest: "0123"
  )

Profile.create([
  {
    first_name: "Kelly",
    last_name: "Roland",
    occupation: "Software Engineer",
    hobbies: "traveling",
    location: "Texas",
    user_id: kelly.id
  },
  {
    first_name: "Robo",
    last_name: "Girl",
    age: 24,
    profile_image: "https://media.distractify.com/brand-img/ErDfjdQtL/0x0/who-is-robo-girl-masked-singer-1665617039405.jpg", 
    status: "single", 
    about_me: "I enjoy monotonous things!",
    occupation: "Robot singer",
    hobbies: "singing",
    location: "Binary, MD",
    user_id: robot.id

  }
])


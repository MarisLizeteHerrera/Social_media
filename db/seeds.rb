200.times do
  name = Faker::Cat.name
  breed = Faker::Cat.breed
  registry = Faker::Cat.registry
  avatar = Faker::Avatar.image(name, '100x400', 'png', 'set4')
  Cat.create(name: name, breed: breed, registry: registry, avatar: avatar)
end

puts "200 Cats Seeded"

10.times do |i|
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "test#{i + 1}@test.com",
    password: "password",
    password_confirmation: "password"
    image: Faker::Avatar.image(name, '100x400', 'png', 'set4')
  )

  post_amount = 5

  post_amount.times do
    post = Post.create(
    title: Faker::Overwatch.hero,
    description: Faker::Overwatch.quote
    )
  end

  Appointment.create(
    date: Faker::Date.forward(23),
    doctor_id: rand(1..doctor_amount),
    user_id: user.id
  )


end

puts "Data Seeded."
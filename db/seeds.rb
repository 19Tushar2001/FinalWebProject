# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Manufacturer.destroy_all
Plane.destroy_all

20.times do
manufacturer = Manufacturer.create(
  name:Faker::Vehicle.manufacture
)
5.times do
  plane = Plane.create(
  model: Faker::Vehicle.make_and_model,
  quantity:Faker::Vehicle.engine_size,
  licensePlate:Faker::Vehicle.vin,
  description:Faker::Vehicle.standard_specs[0],
  year:Faker::Vehicle.year,
  doorCount:Faker::Vehicle.doors,
  distacePerGallon:Faker::Vehicle.engine_size,
  manufacturer:manufacturer
  )
query = URI.encode_www_form_component(["Boing", "Airbus"].join(","))
download_image = URI.open("https://source.unsplash.com/600x600/?#{query}")
plane.image.attach(io: download_image, filename: "m-#{[plane.model, manufacturer.name].join('-')}.jpg")
sleep(1)

end
end

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
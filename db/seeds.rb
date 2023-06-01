# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Vehicle.destroy_all
Business.destroy_all
User.destroy_all

puts 'Creating users...'
User.create!(
  first_name: 'Fred',
  last_name: 'Dirk',
  email: 'fred@gmail.com',
  password: '123456'
)
User.create!(
  first_name: 'Tarek',
  last_name: 'Bader',
  email: 'tarek@gmail.com',
  password: '123456'
)
User.create!(
  first_name: 'Yoris',
  last_name: 'Soso',
  email: 'yoris@gmail.com',
  password: '123456'
)
puts 'Finished creation of users...'


puts 'Creating businesses...'
Business.create!(
  organisation_name: 'Deloitte',
  tax_number: 849,
  user: User.first,
  address: "New York, NY 10004, United States"
)
Business.create!(
  organisation_name: 'Sika',
  tax_number: 444,
  user: User.second,
  address: "17130 TX-46, Texas 78070, United States"
)
Business.create!(
  organisation_name: 'Tour',
  tax_number: 287,
  user: User.third,
  address: "9221 Lake Hefner Pkwy, Oklahoma City, OK 73120, United States"
)
puts 'Finished creation of businesses...'


puts 'Creating vehicles...'
Vehicle.create!(
  model: 'Lambo',
  category: 'SPORT',
  driver_name: 'Yoris',
  base_price: 150,
  business: Business.third
)
Vehicle.create!(
  model: 'Lambo',
  category: 'SPORT',
  driver_name: 'Yoris',
  base_price: 120,
  business: Business.third
)
Vehicle.create!(
  model: 'Mazda',
  category: 'COUPE',
  driver_name: 'Yoris',
  base_price: 40,
  business: Business.third
)
Vehicle.create!(
  model: 'Mercedes',
  category: 'SUV',
  driver_name: 'Yoris',
  base_price: 100,
  business: Business.third
)
Vehicle.create!(
  model: 'Chevrolet',
  category: 'SEDAN',
  driver_name: 'Tarek',
  base_price: 40,
  business: Business.second
)
Vehicle.create!(
  model: 'Dodge',
  category: 'SEDAN',
  driver_name: 'Tarek',
  base_price: 40,
  business: Business.second
)
Vehicle.create!(
  model: 'Ferrari',
  category: 'SPORT',
  driver_name: 'Tarek',
  base_price: 200,
  business: Business.second
)
Vehicle.create!(
  model: 'Jeep',
  category: 'SUV',
  driver_name: 'Tarek',
  base_price: 80,
  business: Business.second
)
Vehicle.create!(
  model: 'Audi',
  category: 'SEDAN',
  driver_name: 'Fred',
  base_price: 50,
  business: Business.first
)
Vehicle.create!(
  model: 'Audi',
  category: 'SEDAN',
  driver_name: 'Fred',
  base_price: 60,
  business: Business.first
)
Vehicle.create!(
  model: 'Cadillac',
  category: 'SUV',
  driver_name: 'Fred',
  base_price: 100,
  business: Business.first
)
Vehicle.create!(
  model: 'BMW',
  category: 'SUV',
  driver_name: 'Fred',
  base_price: 60,
  business: Business.first
)
puts 'Finished creation of vehicles...'

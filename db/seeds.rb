# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)
require 'open-uri'

puts 'Cleaning database...'
Booking.destroy_all
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
ferrari = Vehicle.new(
  model: 'Ferrari',
  category: 'SPORT',
  driver_name: 'Yoris',
  base_price: 150,
  business: Business.third
)

image = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685515667/icc3qdrgmljumwtbblzm.jpg")
ferrari.photos.attach(io: image, filename: "bmw_suv_fuv.png", content_type: "image/png")
image1 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685515743/tc0kz6mc8k72mgzwskhu.jpg")
ferrari.photos.attach(io: image1, filename: "bmw_suv_sv.png", content_type: "image/png")
image2 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685515828/cauarxllqrr6renp68lc.jpg")
ferrari.photos.attach(io: image2, filename: "bmw_suv_fv.png", content_type: "image/png")

ferrari.save

lambo = Vehicle.new(
  model: 'Lambo',
  category: 'SPORT',
  driver_name: 'Yoris',
  base_price: 120,
  business: Business.third
)

image = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685590662/dwaauuoqall3dbu4w70z.jpg")
lambo.photos.attach(io: image, filename: "bmw_suv_fuv.png", content_type: "image/png")
image1 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685590698/nkrgrgebxwdyansvi1v9.jpg")
lambo.photos.attach(io: image1, filename: "bmw_suv_sv.png", content_type: "image/png")
image2 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685590622/xyejzi7l5aj4e5fhibfi.jpg")
lambo.photos.attach(io: image2, filename: "bmw_suv_fv.png", content_type: "image/png")

lambo.save

volkswagen = Vehicle.new(
  model: 'Volkswagen',
  category: 'SUV',
  driver_name: 'Yoris',
  base_price: 40,
  business: Business.third
)

image = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685590365/tid0zaj7zwzktbhdurey.webp")
volkswagen.photos.attach(io: image, filename: "bmw_suv_fuv.png", content_type: "image/png")
image1 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685590281/jv6g5t13fqwrqonhyfnd.webp")
volkswagen.photos.attach(io: image1, filename: "bmw_suv_sv.png", content_type: "image/png")
image2 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685590317/jyouotmwyntkklrilyx2.webp")
volkswagen.photos.attach(io: image2, filename: "bmw_suv_fv.png", content_type: "image/png")

volkswagen.save

opel = Vehicle.new(
  model: 'Opel',
  category: 'SEDAN',
  driver_name: 'Yoris',
  base_price: 100,
  business: Business.third
)

image = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685517672/yghafrnie5xnaxpuqcs4.webp")
opel.photos.attach(io: image, filename: "bmw_suv_fuv.png", content_type: "image/png")
image1 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685517788/rt9rf7aadoh8anfnfro9.webp")
opel.photos.attach(io: image1, filename: "bmw_suv_sv.png", content_type: "image/png")
image2 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685517738/ljfwzfcciyxdhx9ke5xi.webp")
opel.photos.attach(io: image2, filename: "bmw_suv_fv.png", content_type: "image/png")

opel.save

rr_sedan1 = Vehicle.new(
  model: 'Rolls Royce',
  category: 'SEDAN',
  driver_name: 'Tarek',
  base_price: 40,
  business: Business.second
)

image = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685517450/xsncolo3e5eavynpgpdd.webp")
rr_sedan1.photos.attach(io: image, filename: "bmw_suv_fuv.png", content_type: "image/png")
image1 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685517539/dhpbhirkcoiis3hrrg4q.webp")
rr_sedan1.photos.attach(io: image1, filename: "bmw_suv_sv.png", content_type: "image/png")
image2 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685517491/wtwqmdnrbyiewkqxqrli.webp")
rr_sedan1.photos.attach(io: image2, filename: "bmw_suv_fv.png", content_type: "image/png")

rr_sedan1.save

range_suv = Vehicle.new(
  model: 'Range Rover',
  category: 'SUV',
  driver_name: 'Tarek',
  base_price: 40,
  business: Business.second
)

image = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685517213/ntephogtzlqexdgmub1h.jpg")
range_suv.photos.attach(io: image, filename: "bmw_suv_fuv.png", content_type: "image/png")
image1 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685517223/tvfk0m7ubrjllosml5vx.jpg")
range_suv.photos.attach(io: image1, filename: "bmw_suv_sv.png", content_type: "image/png")
image2 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685517234/jwi7v8k2kzf5ahmszpxx.jpg")
range_suv.photos.attach(io: image2, filename: "bmw_suv_fv.png", content_type: "image/png")

range_suv.save

chrysler = Vehicle.new(
  model: 'Chrysler',
  category: 'VAN',
  driver_name: 'Tarek',
  base_price: 200,
  business: Business.second
)

image = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685517128/nselpftavtszmj5rmt4v.jpg")
chrysler.photos.attach(io: image, filename: "bmw_suv_fuv.png", content_type: "image/png")
image1 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685517181/c6up8cgpn2akglawyf9u.jpg")
chrysler.photos.attach(io: image1, filename: "bmw_suv_sv.png", content_type: "image/png")
image2 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685517081/fopl9kajuryryzqkedht.jpg")
chrysler.photos.attach(io: image2, filename: "bmw_suv_fv.png", content_type: "image/png")

chrysler.save

porsche = Vehicle.new(
  model: 'Porsche',
  category: 'SEDAN',
  driver_name: 'Tarek',
  base_price: 80,
  business: Business.second
)

image = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685516781/uhfn6giv4v4nyjpyfmaf.jpg")
porsche.photos.attach(io: image, filename: "bmw_suv_fuv.png", content_type: "image/png")
image1 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685516642/gzxb283qyobcr9loxgj9.jpg")
porsche.photos.attach(io: image1, filename: "bmw_suv_sv.png", content_type: "image/png")
image2 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685516830/wvkllmrpochbhxpm1uab.jpg")
porsche.photos.attach(io: image2, filename: "bmw_suv_fv.png", content_type: "image/png")

porsche.save

nissan_van = Vehicle.new(
  model: 'Nissan',
  category: 'VAN',
  driver_name: 'Fred',
  base_price: 50,
  business: Business.first
)

image = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685590802/cturu1jwyvnej8yv2qde.jpg")
nissan_van.photos.attach(io: image, filename: "bmw_suv_fuv.png", content_type: "image/png")
image1 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685590859/wlh3w38ieda4yhlqh5vf.jpg")
nissan_van.photos.attach(io: image1, filename: "bmw_suv_sv.png", content_type: "image/png")
image2 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685590764/muofsicynjzewnjjjvzr.jpg")
nissan_van.photos.attach(io: image2, filename: "bmw_suv_fv.png", content_type: "image/png")

nissan_van.save

rr_sedan = Vehicle.new(
  model: 'Rolls Royce',
  category: 'SEDAN',
  driver_name: 'Fred',
  base_price: 60,
  business: Business.first
)

image = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685591111/mc5x6qic5anbdcsm0kta.jpg")
rr_sedan.photos.attach(io: image, filename: "bmw_suv_fuv.png", content_type: "image/png")
image1 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685591405/nbpvvfwdwtxhf2khmpfz.jpg")
rr_sedan.photos.attach(io: image1, filename: "bmw_suv_sv.png", content_type: "image/png")
image2 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685591363/whmxxr9mtwec53zbd4eu.jpg")
rr_sedan.photos.attach(io: image2, filename: "bmw_suv_fv.png", content_type: "image/png")

rr_sedan.save

toyota_van = Vehicle.new(
  model: 'Toyota',
  category: 'VAN',
  driver_name: 'Fred',
  base_price: 100,
  business: Business.first
)

image = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685592982/rp0nlskajsljd2h0cgvf.jpg")
toyota_van.photos.attach(io: image, filename: "bmw_suv_fuv.png", content_type: "image/png")
image1 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685593080/hphsdmlq7bqfetqrkyku.jpg")
toyota_van.photos.attach(io: image1, filename: "bmw_suv_sv.png", content_type: "image/png")
image2 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685593025/alxv0pr6pscdfntjgb7b.jpg")
toyota_van.photos.attach(io: image2, filename: "bmw_suv_fv.png", content_type: "image/png")

toyota_van.save

bmw_suv = Vehicle.new(
  model: 'BMW',
  category: 'SUV',
  driver_name: 'Fred',
  base_price: 60,
  business: Business.first
)

image = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685515417/prnyirewc8mfmtcq3agr.jpg")
bmw_suv.photos.attach(io: image, filename: "bmw_suv_fuv.png", content_type: "image/png")
image1 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685515452/ihipwwlxkd8xfc31ynke.jpg")
bmw_suv.photos.attach(io: image1, filename: "bmw_suv_sv.png", content_type: "image/png")
image2 = URI.open("https://res.cloudinary.com/dusf3yrhs/image/upload/v1685515417/prnyirewc8mfmtcq3agr.jpg")
bmw_suv.photos.attach(io: image2, filename: "bmw_suv_fv.png", content_type: "image/png")

bmw_suv.save

puts 'Finished creation of vehicles...'

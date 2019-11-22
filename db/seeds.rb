# db/seeds.rb
Tag.destroy_all if Rails.env.development? || Rails.env.test?
Garden.destroy_all if Rails.env.development?

little = Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

other = Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

Tag.create(name: 'Flower')
Tag.create(name: 'Foliage')
Tag.create(name: 'Fruit')
Tag.create(name: 'Tree')

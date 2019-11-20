# db/seeds.rb
Garden.destroy_all if Rails.env.development? || Rails.env.test?

Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

plants_arr = %w(caryota dieffenbachia monstera philo)

Plant.create!(
  name: plants_arr.sample.capitalize,
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/#{plants_arr.sample}.jpg",
  garden: Garden.first
)

Plant.create!(
  name: plants_arr.sample.capitalize,
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/#{plants_arr.sample}.jpg",
  garden: Garden.first
)

Plant.create!(
  name: plants_arr.sample.capitalize,
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/#{plants_arr.sample}.jpg",
  garden: Garden.first
)

Plant.create!(
  name: plants_arr.sample.capitalize,
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/#{plants_arr.sample}.jpg",
  garden: Garden.last
)

Plant.create!(
  name: plants_arr.sample.capitalize,
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/#{plants_arr.sample}.jpg",
  garden: Garden.last
)
# db/seeds.rb
Tag.destroy_all if Rails.env.development? || Rails.env.test?

Tag.create(name: 'Flower')
Tag.create(name: 'Foliage')
Tag.create(name: 'Fruit')
Tag.create(name: 'Tree')

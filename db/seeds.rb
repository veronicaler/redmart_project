# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require './models/product'
# require 'faker'

# seeds.rb is a way of automating the population of the database with testing data.

(0..10).each do |i|
    Product.create(
      product_name: Faker::Name.name,
    )
  end

  (0..10).each do |i|
      User.create(
        name: Faker::Name.name,
      )
    end

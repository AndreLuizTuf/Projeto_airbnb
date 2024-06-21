# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Property.create!({
  name: 'Sample Property',
  description: 'asf34daf',
  headline: 'asfd345af',
  address_1: 'asfd345af',
  address_2: 'asf435daf',
  city: 'asfd345af',
  state: 'asfd345af',
  country: 'asf345daf',
})

Property.create!({
  name: 'Sample Property 2',
  description: 'wr',
  headline: 'asd',
  address_1: 'asfd345wraf',
  address_2: 'asd',
  city: 'ewr',
  state: 'er',
  country: 'er',
})

Property.create!({
  name: 'wr',
  headline: 'asd',
  address_1: 'asfd345wraf',
  address_2: 'asd',
  city: 'ewr',
  state: 'er',
  country: 'er',
})

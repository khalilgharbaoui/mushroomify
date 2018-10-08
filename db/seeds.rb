# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do |i|
  edible = %w[edible poisonous].sample
  cap_shape = %w[bell conical convex flat knobbed sunken].sample
  cap_color = %w[brown buff cinnamon gray green pink purple red white yellow].sample
  cap_surface = %w[fibrous grooves scaly smooth].sample
  bruiser = %w[bruises no].sample
  Mushroom.create!(identifier: i, edible: edible, cap_shape: cap_shape, cap_color: cap_color, cap_surface: cap_surface, bruiser: bruiser)
end

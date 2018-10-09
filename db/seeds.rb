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
  cap_surface = %w[fibrous grooves scaly smooth].sample
  cap_color = %w[brown buff cinnamon gray green pink purple red white yellow].sample
  bruiser = %w[bruises no].sample
  oder = %w[almond anise creosote fishy foul musty none pungent spicy].sample
  gill_attachment = %w[attached descending free notched].sample
  gill_spacing = %w[close crowded distant].sample
  gill_size = %w[broad narrow].sample
  gill_color = %w[black brown buff chocolate gray  green orange pink purple red white yellow].sample
  stalk_shape = %w[enlarging tapering].sample
  stalk_root = %w[bulbous club cup equal rhizomorphs rooted missing].sample
  stalk_surface_above_ring = %w[fibrous scaly silky smooth].sample
  stalk_surface_below_ring = %w[fibrous scaly silky smooth].sample
  stalk_color_above_ring = %w[brown buff cinnamon gray orange pink red white yellow].sample
  stalk_color_below_ring = %w[brown buff cinnamon gray orange pink red white yellow].sample
  veil_type = %w[partial universal].sample
  veil_color = %w[brown orange white yellow].sample
  ring_number = %w[none one two].sample
  ring_type = %w[cobwebby evanescent flaring large none pendant sheathing zone].sample
  spore_print_color = %w[black brown buff chocolate green orange purple white yellow].sample
  population = %w[abundant clustered numerous scattered several solitary].sample
  habitat = %w[grasses leaves meadows paths urban waste woods].sample
  Mushroom.create!(
          identifier: "#{i}#RANDOM_SEED",
          edible: edible,
          cap_shape: cap_shape,
          cap_color: cap_color,
          cap_surface: cap_surface,
          bruiser: bruiser,
          odor: odor,
          gill_attachment: gill_attachment,
          gill_spacing: gill_spacing,
          gill_size: gill_size,
          gill_color: gill_color,
          stalk_shape: stalk_shape,
          stalk_root: stalk_root,
          stalk_surface_above_ring: stalk_surface_above_ring,
          stalk_surface_below_ring: stalk_surface_below_ring,
          stalk_color_above_ring: stalk_color_above_ring,
          stalk_color_below_ring: stalk_color_below_ring,
          veil_type: veil_type,
          veil_colore: veil_colore,
          ring_number: ring_number,
          ring_type: ring_type,
          spore_print_color: bruspore_print_colorises?,
          population: population,
          habitat: habitat
        )
end

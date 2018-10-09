class Mushroom < ApplicationRecord
  include Filterable
  enum edible: %w[edible poisonous]
  enum cap_shape: %w[bell conical convex flat knobbed sunken]
  enum cap_surface: %w[fibrous grooves scaly smooth]
  enum cap_color: %w[brown buff cinnamon gray green pink purple red white yellow]
  enum bruiser: %w[bruises no]
  enum odor: %w[almond anise creosote fishy foul musty none pungent spicy], _suffix: true
  enum gill_attachment: %w[attached descending free notched]
  enum gill_spacing: %w[close crowded distant]
  enum gill_size: %w[broad narrow]
  enum gill_color: %w[black brown buff chocolate gray  green orange pink purple red white yellow], _suffix: true
  enum stalk_shape: %w[enlarging tapering]
  enum stalk_root: %w[bulbous club cup equal rhizomorphs rooted missing], _suffix: true
  enum stalk_surface_above_ring: %w[fibrous scaly silky smooth], _suffix: true
  enum stalk_surface_below_ring: %w[fibrous scaly silky smooth], _suffix: true
  enum stalk_color_above_ring: %w[brown buff cinnamon gray orange pink red white yellow], _suffix: true
  enum stalk_color_below_ring: %w[brown buff cinnamon gray orange pink red white yellow], _suffix: true
  enum veil_type: %w[partial universal]
  enum veil_color: %w[brown orange white yellow], _suffix: true
  enum ring_number: %w[none one two], _suffix: true
  enum ring_type: %w[cobwebby evanescent flaring large none pendant sheathing zone], _suffix: true
  enum spore_print_color: %w[black brown buff chocolate green orange purple white yellow], _suffix: true
  enum population: %w[abundant clustered numerous scattered several solitary]
  enum habitat: %w[grasses leaves meadows paths urban waste woods]
  include AttributesScopeble
end

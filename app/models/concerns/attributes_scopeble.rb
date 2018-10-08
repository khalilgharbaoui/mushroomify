module AttributesScopeble
  extend ActiveSupport::Concern
  included do
    scope :eadible, ->(eadible) { where eadible: eadible }
    scope :cap_shape, ->(cap_shape) { where cap_shape: cap_shape }
    scope :cap_color, ->(cap_color) { where cap_color: cap_color }
    scope :cap_surface, ->(cap_surface) { where cap_surface: cap_surface }
    scope :bruiser, ->(bruiser) { where bruiser: bruiser }
  end
end

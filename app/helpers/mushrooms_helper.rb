module MushroomsHelper
  def filter_attributes
    Mushroom.attribute_names - %w[id identifier created_at updated_at]
  end
end

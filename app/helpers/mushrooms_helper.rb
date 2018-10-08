module MushroomsHelper
  def filter_attributes
    MushroomAttributes::MUSHROOM_ATTRIBUTES
    # Mushroom.attribute_names - %w[id identifier created_at updated_at]
  end
end

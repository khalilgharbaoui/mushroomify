module MushroomsHelper
  def filter_fields
    Mushroom.attribute_names - ['id','identifier','created_at','updated_at']
  end
end

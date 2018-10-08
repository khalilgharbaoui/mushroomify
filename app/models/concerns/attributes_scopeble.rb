module AttributesScopeble
  extend ActiveSupport::Concern
  included do
    MushroomAttributes::MUSHROOM_ATTRIBUTES.each do |attribute|
      scope :"#{attribute}", ->(value) { where(:"#{attribute}" => value) }
    end
  end
end

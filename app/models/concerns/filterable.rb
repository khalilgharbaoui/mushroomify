module Filterable
  extend ActiveSupport::Concern
  class_methods do
    def filter(filter_attributes, params)
      results = all;
      filter_attributes.each do |attribute|
        results = results.send(attribute, params[attribute]) if params[attribute].present?
      end
      results
    end
  end
end

require 'representable/json'

module Igdb
  class FeatureRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::Feature

    property :title # Title of the feature
    property :description # Description of the feature
    property :category # Feature category
    property :position # Show at this index

    collection :values, extend: Igdb::FeatureValueRepresenter,
                        class: Igdb::FeatureValue
  end
end

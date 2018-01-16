require 'representable/json'

module Igdb
  class FeatureValueRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::Feature

    property :game # ID of the Edition
    property :value # Feature's value
  end
end

require 'representable/json'

# URL path: /pulse_groups/
module Igdb
  class PulseGroupRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::PulseGroup

    property :id
    property :name
    property :category
    property :created_at
    property :updated_at
    property :published_at
    property :game

    collection :tags
    collection :pulses
  end
end

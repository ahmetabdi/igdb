require 'representable/json'

# URL path: /pulse_sources/
module Igdb
  class PulseSourceRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::PulseSource

    property :id
    property :name
    property :game
    property :page
  end
end

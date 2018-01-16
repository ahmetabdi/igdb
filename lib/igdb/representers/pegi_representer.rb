require 'representable/json'

module Igdb
  class PegiRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::Pegi

    property :rating # See the PEGI rating value reference
    property :synopsis
  end
end

require 'representable/json'

module Igdb
  class EsrbRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::Esrb

    property :rating # See the ESRB rating value reference
    property :synopsis
  end
end

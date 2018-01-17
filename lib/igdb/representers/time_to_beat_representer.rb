require 'representable/json'

module Igdb
  class TimeToBeatRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::TimeToBeat

    property :hastily
    property :normally
    property :completely
  end
end

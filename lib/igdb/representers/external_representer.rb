require 'representable/json'

module Igdb
  class ExternalRepresenter < Representable::Decorator
    include Representable::JSON

    property :steam # The steam id.
  end
end

require 'representable/json'

module Igdb
  class AlternativeNameRepresenter < Igdb::Representer
    collection_representer class: Igdb::AlternativeName

    property :name
    property :comment
  end
end

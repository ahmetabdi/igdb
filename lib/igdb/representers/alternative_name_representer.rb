require 'representable/json'

class Igdb::AlternativeNameRepresenter < Igdb::Representer
  collection_representer class: Igdb::AlternativeName
  
  property :name
  property :comment
end

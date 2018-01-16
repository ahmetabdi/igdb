require 'representable/json'

class Igdb::AlternativeNameRepresenter < Igdb::Representer
  
  property :name
  property :comment
end

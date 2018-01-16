require 'representable/json'

class Igdb::Representer < Representable::Decorator
  include Representable::JSON

  property :id # The id of the character.
  property :name # The name of the character.
  property :slug # 
  property :url # 
  property :created_at
  property :updated_at
end
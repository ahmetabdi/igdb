require 'ostruct'
require 'representable/json'

# URL path: /characters/
# Video game characters
class Igdb::CharacterRepresenter < Igdb::Representer

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at
  
  property :mug_shot # See the Image object reference.
  property :gender # See the Gender value reference.
  property :species # See the Species value reference.

  collection :akas # Name aliases - ‘also known as’.
  collection :games # List of games character appears in.
  collection :people # List of people associated with character.
end

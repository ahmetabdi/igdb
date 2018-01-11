require 'ostruct'

# URL path: /characters/
# Video game characters
module Igdb::CharacterRepresenter
  include Igdb::Representer
  
  # See the Image object reference.
  property :mug_shot, extend: Igdb::ImageRepresenter, class: OpenStruct 
  property :gender # See the Gender value reference.
  property :species # See the Species value reference.

  collection :akas # Name aliases - ‘also known as’.
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game # List of games character appears in.
  collection :people, extend: Igdb::PersonRepresenter, class: Igdb::Person # List of people associated with character.
end

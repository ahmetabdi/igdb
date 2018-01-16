require 'representable/json'

class Igdb::PersonRepresenter < Igdb::Representer
  collection_representer class: Igdb::Person

  property :mug_shot
  
  collection :games
  collection :characters
  collection :voice_acted
end

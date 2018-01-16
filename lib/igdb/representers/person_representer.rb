require 'representable/json'

class Igdb::PersonRepresenter < Igdb::Representer

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at

  property :mug_shot
  
  collection :games
  collection :characters
  collection :voice_acted
end

require 'representable/json'

class Igdb::GameModeRepresenter < Igdb::Representer

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at
  
  collection :games
end

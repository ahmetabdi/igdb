require 'representable/json'

class Igdb::GenreRepresenter < Igdb::Representer

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at
  
  collection :games
end

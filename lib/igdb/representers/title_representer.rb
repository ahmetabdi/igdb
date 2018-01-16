# URL path: /titles/
require 'representable/json'

class Igdb::TitleRepresenter < Igdb::Representer

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at
  
  property :description
  
  collection :games
end

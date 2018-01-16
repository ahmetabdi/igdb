require 'representable/json'

class Igdb::PlatformRepresenter < Igdb::Representer

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at

  property :logo
  property :summary
  property :alternative_name
  property :generation
  
  collection :games
  collection :versions
end

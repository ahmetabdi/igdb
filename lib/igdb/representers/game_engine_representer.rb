require 'representable/json'

class Igdb::GameEngineRepresenter < Igdb::Representer

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at
  
  property :logo

  collection :games
  collection :companies
  collection :platforms
end

require 'representable/json'

class Igdb::VersionRepresenter < Igdb::Representer

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at
  
  property :description
  
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game
end

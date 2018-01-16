require 'representable/json'

class Igdb::VersionRepresenter < Igdb::Representer
  collection_representer class: Igdb::Version
  
  property :description
  
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game
end

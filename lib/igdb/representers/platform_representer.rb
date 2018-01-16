require 'representable/json'

class Igdb::PlatformRepresenter < Igdb::Representer
  collection_representer class: Igdb::Platform

  property :logo
  property :summary
  property :alternative_name
  property :generation
  
  collection :games
  collection :versions
end

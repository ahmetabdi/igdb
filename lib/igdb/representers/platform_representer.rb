# URL path: /platforms/
# The hardware used to run the game or game delivery network
module Igdb::PlatformRepresenter
  include Igdb::Representer

  property :logo
  property :summary
  property :alternative_name
  property :generation
  
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game
  collection :versions, extend: Igdb::VersionRepresenter, class: Igdb::Version
end

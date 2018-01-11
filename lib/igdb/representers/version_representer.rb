# URL path: /versions/
# Details about game editions and versions.
module Igdb::VersionRepresenter
  include Igdb::Representer
  
  property :description
  
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game
end

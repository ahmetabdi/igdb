# URL path: /player_perspectives/
require 'representable/json'

class Igdb::PlayerPerspectiveRepresenter < Igdb::Representer
  collection_representer class: Igdb::PlayerPerspective
  
  collection :games
end

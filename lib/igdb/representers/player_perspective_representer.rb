# URL path: /player_perspectives/
module Igdb::PlayerPerspectiveRepresenter
  include Igdb::Representer
  
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game
end

# URL path: /game_modes/
# Single player, Multiplayer etc
module Igdb::GenreRepresenter
  include Igdb::Representer
  
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game
end

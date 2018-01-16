require 'representable/json'

# URL path: /game_modes/
# Single player, Multiplayer etc.
module Igdb
  class GameModeRepresenter < Igdb::Representer
    collection_representer class: Igdb::GameMode

    collection :games
  end
end

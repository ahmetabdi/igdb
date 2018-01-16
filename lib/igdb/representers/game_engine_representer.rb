require 'representable/json'

# URL path: /game_engines/
# Video game engines such as unreal engine.
module Igdb
  class GameEngineRepresenter < Igdb::Representer
    collection_representer class: Igdb::GameEngine

    property :logo

    collection :games
    collection :companies
    collection :platforms
  end
end

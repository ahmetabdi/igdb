module Igdb
  class GameMode < Igdb::ApiResource
    @path = 'game_modes'
    @representer = Igdb::GameModeRepresenter
  end
end

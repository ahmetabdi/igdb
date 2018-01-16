module Igdb
  class GameEngine < Igdb::ApiResource
    @path = 'game_engines'
    @representer = Igdb::GameEngineRepresenter
  end
end

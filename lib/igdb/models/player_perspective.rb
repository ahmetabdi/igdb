module Igdb
  class PlayerPerspective < Igdb::ApiResource
    @path = 'player_perspectives'
    @representer = Igdb::PlayerPerspectiveRepresenter
  end
end

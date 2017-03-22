class Igdb::PlayerPerspective < Igdb::ApiResource
  @path = 'player_perspectives'
  @representer = Igdb::PlayerPerspectiveRepresenter
end
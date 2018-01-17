module Igdb
  class Game < Igdb::ApiResource
    @path = 'games'
    @representer = Igdb::GameRepresenter
  end
end

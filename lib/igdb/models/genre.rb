module Igdb
  class Genre < Igdb::ApiResource
    @path = 'genres'
    @representer = Igdb::GenreRepresenter
  end
end

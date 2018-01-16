module Igdb
  class ReleaseDate < Igdb::ApiResource
    @path = 'release_dates'
    @representer = Igdb::ReleaseDateRepresenter
  end
end

module Igdb
  class Platform < Igdb::ApiResource
    @path = 'platforms'
    @representer = Igdb::PlatformRepresenter
  end
end

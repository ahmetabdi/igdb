module Igdb
  class Version < Igdb::ApiResource
    @path = 'game_versions'
    @representer = Igdb::VersionRepresenter
  end
end

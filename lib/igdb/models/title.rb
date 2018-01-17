module Igdb
  class Title < Igdb::ApiResource
    @path = 'titles'
    @representer = Igdb::TitleRepresenter
  end
end

module Igdb
  class Theme < Igdb::ApiResource
    @path = 'themes'
    @representer = Igdb::ThemeRepresenter
  end
end

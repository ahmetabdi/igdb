module Igdb
  class Keyword < Igdb::ApiResource
    @path = 'keywords'
    @representer = Igdb::KeywordRepresenter
  end
end

module Igdb
  class Page < Igdb::ApiResource
    @path = 'pages'
    @representer = Igdb::PageRepresenter
  end
end

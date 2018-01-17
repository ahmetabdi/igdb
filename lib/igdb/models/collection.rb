module Igdb
  class Collection < Igdb::ApiResource
    @path = 'collections'
    @representer = Igdb::CollectionRepresenter
  end
end

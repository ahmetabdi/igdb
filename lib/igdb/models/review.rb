module Igdb
  class Review < Igdb::ApiResource
    @path = 'reviews'
    @representer = Igdb::ReviewRepresenter
  end
end

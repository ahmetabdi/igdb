module Igdb
  class Feed < Igdb::ApiResource
    @path = 'feeds'
    @representer = Igdb::FeedRepresenter
  end
end

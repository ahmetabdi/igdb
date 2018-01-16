module Igdb
  class Video < Igdb::ApiResource
    @path = 'videos'
    @representer = Igdb::VideoRepresenter
  end
end

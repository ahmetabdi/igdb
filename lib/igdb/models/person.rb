module Igdb
  class Person < Igdb::ApiResource
    @path = 'people'
    @representer = Igdb::PersonRepresenter
  end
end

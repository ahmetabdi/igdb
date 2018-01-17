require 'representable/json'

# URL path: /genres/
module Igdb
  class GenreRepresenter < Igdb::Representer
    collection_representer class: Igdb::Genre

    collection :games
  end
end

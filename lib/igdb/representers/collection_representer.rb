require 'representable/json'

# URL path: /collections/
# Collection, AKA Series
module Igdb
  class CollectionRepresenter < Igdb::Representer
    collection_representer class: Igdb::Collection

    collection :games
  end
end

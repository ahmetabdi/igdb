require 'representable/json'

# URL path: /collections/
# Collection, AKA Series
class Igdb::CollectionRepresenter < Igdb::Representer
  collection_representer class: Igdb::Collection

  collection :games # List of games character appears in.
end

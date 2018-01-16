require 'representable/json'

# URL path: /collections/
# Collection, AKA Series
class Igdb::CollectionRepresenter < Igdb::Representer

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at

  collection :games # List of games character appears in.
end

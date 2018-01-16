# URL path: /pulse_sources/
require 'representable/json'

class Igdb::ReleaseDateRepresenter < Igdb::Representer
  collection_representer class: Igdb::ReleaseDate
  
  property :id
  property :game
  property :category
  property :platform
  property :human
  property :created_at
  property :updated_at
  property :date
  property :region
  property :y
  property :m
end

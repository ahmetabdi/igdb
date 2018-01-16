require 'representable/json'

class Igdb::PulseRepresenter < Igdb::Representer
  
  property :id
  property :pulse_source
  property :title
  property :summary
  property :url
  property :created_at
  property :updated_at
  property :published_at
  property :image
  property :author
  
  collection :tags
end

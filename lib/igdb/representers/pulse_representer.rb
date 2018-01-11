# URL path: /pulses/
# A single news article.
module Igdb::PulseRepresenter
  include Representable::JSON
  
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

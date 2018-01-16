require 'representable/json'

class Igdb::ImageRepresenter < Igdb::Representer
  collection_representer class: Igdb::Image

  property :url
  property :cloudinary_id
  property :width
  property :height
end
require 'representable/json'

class Igdb::ImageRepresenter < Igdb::Representer

  property :url
  property :cloudinary_id
  property :width
  property :height
end
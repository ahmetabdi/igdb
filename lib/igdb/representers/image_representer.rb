module Igdb::ImageRepresenter
  include Representable::JSON

  property :url
  property :cloudinary_id
  property :width
  property :height
end
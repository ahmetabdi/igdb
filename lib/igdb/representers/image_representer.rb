require 'representable/json'

module Igdb
  class ImageRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::Image

    property :url # Can be non-IGDB URL
    property :cloudinary_id # Cloudinary slug
    property :width # The image's width in pixels
    property :height # The image's height in pixels
  end
end

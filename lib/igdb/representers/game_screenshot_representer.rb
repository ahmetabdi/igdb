module Igdb::GameScreenshotRepresenter
  include Representable::JSON

  property :title
  property :url
  property :width
  property :height
  property :id
end

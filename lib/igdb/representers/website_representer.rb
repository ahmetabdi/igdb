require 'representable/json'

module Igdb
  class WebsiteRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::Website

    property :category
    property :url
  end
end

require 'representable/json'

# URL path: /pulses/
# A single news article.
module Igdb
  class PulseRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::Pulse

    property :id
    property :pulse_source
    property :title
    property :summary # Can contain HTML markup
    property :url # Publisher's pulse URL, can be path only.
    property :uid # Publisher's pulse entry unique id
    property :created_at
    property :updated_at
    property :published_at
    property :image
    property :author

    collection :tags
  end
end

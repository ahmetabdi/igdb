require 'representable/json'

module Igdb
  class Representer < Representable::Decorator
    include Representable::JSON

    property :id
    property :name
    property :slug
    property :url
    property :created_at
    property :updated_at
  end
end

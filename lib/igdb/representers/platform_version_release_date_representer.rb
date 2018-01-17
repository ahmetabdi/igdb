require 'representable/json'

module Igdb
  class PlatformVersionReleaseDateRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::PlatformVersionReleaseDate

    property :date
    property :region
  end
end

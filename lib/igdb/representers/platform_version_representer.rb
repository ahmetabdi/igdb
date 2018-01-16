require 'representable/json'

module Igdb
  class PlatformVersionRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::PlatformVersion

    property :url
    property :name
    property :slug
    property :cpu
    property :os
    property :media
    property :memory
    property :online
    property :output
    property :storage
    property :graphics
    property :resolutions
    property :connectivity
    property :logo
    property :summary

    collection :release_dates, extend: Igdb::PlatformVersionReleaseDateRepresenter,
                               class: Igdb::PlatformVersionReleaseDate
    collection :developers, extend: Igdb::PlatformCompanyRepresenter,
                            class: Igdb::PlatformCompany
    collection :manufacturers, extend: Igdb::PlatformCompanyRepresenter,
                               class: Igdb::PlatformCompany
  end
end

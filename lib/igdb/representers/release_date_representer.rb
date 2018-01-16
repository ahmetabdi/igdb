require 'representable/json'

# URL path: /release_dates/
# A handy endpoint that extends the games endpoint. Used to dig deeper into release dates, platforms and versions.
module Igdb
  class ReleaseDateRepresenter < Igdb::Representer
    collection_representer class: Igdb::ReleaseDate

    property :id
    property :game
    property :category
    property :platform
    property :human
    property :created_at
    property :updated_at
    property :date
    property :region
    property :y
    property :m
  end
end

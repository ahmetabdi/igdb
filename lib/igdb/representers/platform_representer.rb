require 'representable/json'

# URL path: /platforms/
# The hardware used to run the game or game delivery network
module Igdb
  class PlatformRepresenter < Igdb::Representer
    collection_representer class: Igdb::Platform

    property :logo
    property :summary
    property :alternative_name
    property :generation

    collection :games
    collection :versions
  end
end

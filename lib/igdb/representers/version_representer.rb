require 'representable/json'

# URL path: /game_versions/
# Details about game editions and versions.
module Igdb
  class VersionRepresenter < Igdb::Representer
    collection_representer class: Igdb::Version

    property :id
    property :game # ID of the parent game
    property :created_at
    property :updated_at
    property :url # URL of the main game

    collection :features, extend: Igdb::FeatureRepresenter,
                          class: Igdb::Feature
    collection :games # IDs of Game records which are versions of the main game
  end
end

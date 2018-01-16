require 'representable/json'

# URL path: /player_perspectives/
# First person, third person, etc.
module Igdb
  class PlayerPerspectiveRepresenter < Igdb::Representer
    collection_representer class: Igdb::PlayerPerspective

    collection :games
  end
end

require 'representable/json'

# URL path: /titles/
# Job titles in the industry.
module Igdb
  class TitleRepresenter < Igdb::Representer
    collection_representer class: Igdb::Title

    property :description

    collection :games
  end
end

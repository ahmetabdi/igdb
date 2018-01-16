# URL path: /keywords/
require 'representable/json'

# URL path: /keywords/
# Keywords are words or phrases that get tagged to a game such as "world war 2" or "steampunk".
module Igdb
  class KeywordRepresenter < Igdb::Representer
    collection_representer class: Igdb::Keyword

    collection :games
  end
end

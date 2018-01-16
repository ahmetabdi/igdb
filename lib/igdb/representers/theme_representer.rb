require 'representable/json'

# URL path: /themes/
module Igdb
  class ThemeRepresenter < Igdb::Representer
    collection_representer class: Igdb::Theme

    collection :games
  end
end

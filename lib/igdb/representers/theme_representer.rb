# URL path: /themes/
require 'representable/json'

class Igdb::ThemeRepresenter < Igdb::Representer
  collection_representer class: Igdb::Theme
  
  collection :games
end

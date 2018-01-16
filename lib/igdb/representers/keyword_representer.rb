# URL path: /keywords/
require 'representable/json'

class Igdb::KeywordRepresenter < Igdb::Representer
  collection_representer class: Igdb::Keyword
  
  collection :games
end

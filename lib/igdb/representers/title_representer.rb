# URL path: /titles/
require 'representable/json'

class Igdb::TitleRepresenter < Igdb::Representer
  collection_representer class: Igdb::Title
  
  property :description
  
  collection :games
end

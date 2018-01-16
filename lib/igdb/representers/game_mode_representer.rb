require 'representable/json'

class Igdb::GameModeRepresenter < Igdb::Representer
  collection_representer class: Igdb::GameMode
  
  collection :games
end

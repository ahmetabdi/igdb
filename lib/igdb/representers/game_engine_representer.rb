require 'representable/json'

class Igdb::GameEngineRepresenter < Igdb::Representer
  collection_representer class: Igdb::GameEngine
  
  property :logo

  collection :games
  collection :companies
  collection :platforms
end

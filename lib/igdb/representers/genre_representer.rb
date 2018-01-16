require 'representable/json'

class Igdb::GenreRepresenter < Igdb::Representer
  collection_representer class: Igdb::Genre
  
  collection :games
end

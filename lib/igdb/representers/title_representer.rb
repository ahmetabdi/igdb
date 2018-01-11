# URL path: /titles/
module Igdb::TitleRepresenter
  include Igdb::Representer
  
  property :description
  
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game
end

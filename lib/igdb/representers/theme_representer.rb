# URL path: /themes/
module Igdb::ThemeRepresenter
  include Igdb::Representer
  
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game
end

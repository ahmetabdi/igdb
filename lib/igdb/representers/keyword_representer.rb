# URL path: /keywords/
# Keywords are words or phrases that get tagged to a game such as “world war 2” 
# or “steampunk”.
module Igdb::KeywordRepresenter
  include Igdb::Representer
  
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game
end

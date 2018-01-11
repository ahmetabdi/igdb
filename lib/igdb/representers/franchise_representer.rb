# URL path: /franchises/
# A list of video game franchises such as Star Wars.
module Igdb::FranchiseRepresenter
  include Igdb::Representer
  
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game
end

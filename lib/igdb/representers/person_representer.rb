# URL path: /people/
# Individuals who are in the video games industry
module Igdb::PersonRepresenter
  include Igdb::Representer

  property :mug_shot
  
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game
  collection :characters, extend: Igdb::CharacterRepresenter, class: Igdb::Character
  collection :voice_acted, extend: Igdb::GameRepresenter, class: Igdb::Game
end

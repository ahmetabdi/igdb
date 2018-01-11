# URL path: /game_engines/
# Video game engines such as unreal engine.
module Igdb::GameEngineRepresenter
  include Igdb::Representer
  
  property :logo, extend: Igdb::ImageRepresenter

  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game
  collection :companies, extend: Igdb::CompanyRepresenter, class: Igdb::Company
  collection :platforms, extend: Igdb::PlatformRepresenter, class: Igdb::Platform
end

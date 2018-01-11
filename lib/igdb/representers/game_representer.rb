require 'ostruct'

module Igdb::GameRepresenter
  include Igdb::Representer
  
  property :summary 
  property :storyline
  property :collection # Collection (aka series) the game belongs to
  property :franchise # ID of a Franchise record
  property :hypes #	Number of follows a game gets before release
  property :popularity # A number based on traffic to that game page
  property :rating # Average user rating
  property :rating_count # Number of user ratings
  property :aggregated_rating # Rating based on external critic scores
  property :aggregated_rating_count # Number of external critic scores
  property :total_rating # Average rating based on both IGDB user and external critic scores
  property :total_rating_count # Total number of user and external critic scores
  property :game # ID of a Game this game is a DLC/expansion of (expandable)
  property :version_parent # ID of a Game this game is an edition of
  property :category # See the Game category value reference
  property :time_to_beat # See the Time to beat object reference
  property :first_release_date # Initial release date of the game.
  property :status
  property :cover, extend: Igdb::ImageRepresenter, class: OpenStruct
  property :esrb
  property :pegi
  
  property :alternative_name 
  property :developer # True if the company is the developer of the game.
  property :publisher # True if the company is the publisher of the game.
  property :name  # The name of the company.
  property :cover # The cover image of the game.
  property :subtitle  # The subtitle of the screenshot.
  property :src # The source of the image in the thumbnail format.
  property :size # The number of games in the database.

  #  List of companies that developed the game.
  collection :developers, extend: Igdb::CompanyRepresenter, class: Igdb::Company
  #  List of companies that published the game.
  collection :publishers, extend: Igdb::CompanyRepresenter, class: Igdb::Company
  # List of game engines
  collection :game_engines, extend: Igdb::GameEngineRepresenter, class: Igdb::GameEngine
  collection :player_perspectives, extend: Igdb::PlayerPerspectiveRepresenter, class: Igdb::PlayerPerspective 
  # List of player perspectives
  collection :game_modes, extend: Igdb::GameModeRepresenter, class: Igdb::GameMode 
  # List of keywords
  collection :keywords, extend: Igdb::KeywordRepresenter, class: Igdb::Keyword 
  collection :themes, extend: Igdb::ThemeRepresenter, class: Igdb::Theme 
  collection :genres, extend: Igdb::GenreRepresenter, class: Igdb::Genre 
  collection :release_dates, extend: Igdb::ReleaseDateRepresenter, class: Igdb::ReleaseDate 
  # The alternative names of the game.
  collection :alternative_names, extend: Igdb::AlternativeNameRepresenter, class: Igdb::AlternativeName 
  collection :screenshots, extend: Igdb::ImageRepresenter, class: OpenStruct 
  collection :videos, extend: Igdb::VideoRepresenter, class: Igdb::Video 
  collection :websites
  collection :tags
  # IDs of Game records (expandable)
  collection :dlcs, extend: Igdb::GameRepresenter, class: Igdb::Game 
  # IDs of Game records (expandable)
  collection :expansions, extend: Igdb::GameRepresenter, class: Igdb::Game 
  # IDs of Game records (expandable)
  collection :standalone_expansions, extend: Igdb::GameRepresenter, class: Igdb::Game 
  # IDs of Game records (expandable)
  collection :bundles, extend: Igdb::GameRepresenter, class: Igdb::Game 
  # IDs of Game records that are similar to this game. (expandable)
  collection :games, extend: Igdb::GameRepresenter, class: Igdb::GameRepresenter 
  # 	See the External object reference
  collection :external
end

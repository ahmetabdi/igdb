require 'ostruct'
require 'representable/hash'

class Igdb::GameRepresenter < Igdb::Representer
  include Representable::JSON
  
  property :summary # Summary of the game.
  property :storyline # Plot of the game.
  property :collection # Collection (aka series) the game belongs to.
  property :franchise # ID of a Franchise record.
  property :hypes #	Number of follows a game gets before release.
  property :popularity # A number based on traffic to that game page.
  property :rating # Average user rating.
  property :rating_count # Number of user ratings.
  property :aggregated_rating # Rating based on external critic scores.
  property :aggregated_rating_count # Number of external critic scores.
  property :total_rating # Average rating based on both IGDB user and external critic scores.
  property :total_rating_count # Total number of user and external critic scores.
  property :game # ID of a Game this game is a DLC/expansion of (expandable).
  property :version_parent # ID of a Game this game is an edition of.
  property :category # See the Game category value reference.
  property :time_to_beat # See the Time to beat object reference.
  property :first_release_date # Initial release date of the game.
  property :status # Release status, e.g. released, alpha, beta, etc.
  property :cover # Cover image.
  property :esrb # ESRB rating.
  property :pegi # PEGI rating.
  
  collection :developers # List of companies that developed the game.
  collection :publishers # List of companies that published the game.
  collection :game_engines # List of game engines that the game uses.
  collection :player_perspectives # List of player perspectives.
  collection :game_modes # List of game modes
  collection :keywords # List of keywords.
  collection :themes # List of themes
  collection :genres # List of genres
  collection :release_dates, extend: Igdb::ReleaseDateRepresenter,
                             class: Igdb::ReleaseDate 
  collection :alternative_names, extend: Igdb::AlternativeNameRepresenter, # The alternative names of the game.
                                 class: Igdb::AlternativeName 
  collection :screenshots 
  collection :videos, extend: Igdb::VideoRepresenter, class: Igdb::Video 
  collection :websites
  collection :tags
  collection :dlcs, extend: Igdb::GameRepresenter, class: Igdb::Game# IDs of Game records (expandable).
  collection :expansions, extend: Igdb::GameRepresenter, class: Igdb::Game# IDs of Game records (expandable).
  collection :standalone_expansions, extend: Igdb::GameRepresenter, class: Igdb::Game # IDs of Game records (expandable)
  collection :bundles, extend: Igdb::GameRepresenter, class: Igdb::Game  # IDs of Game records (expandable)
  collection :games # IDs of Game records that are similar to this game. (expandable)
  collection :external # See the External object reference
end

module Igdb::GameRepresenter
  include Igdb::BaseRepresenter

  property :summary # Not documented in V1 API
  property :storyline
  property :collection
  property :franchise
  property :hypes
  property :rating # The rating of the game.
  property :rating_count
  property :popularity
  property :first_release_date  # First release date of the game.
  property :status
  property :esrb
  property :pegi
  property :category
  property :time_to_beat
  property :game
  property :cover, extend: Igdb::ImageRepresenter, class: OpenStruct # The cover image of the game.

  collection :developers
  collection :publishers
  collection :genres
  collection :game_engines
  collection :player_perspectives
  collection :game_modes
  collection :keywords
  collection :themes
  collection :release_dates, extend: Igdb::ReleaseDateRepresenter, class: Igdb::ReleaseDate # The release dates of the game.
  collection :videos, extend: Igdb::VideoRepresenter, class: OpenStruct # Not documented in v1 API
  collection :screenshots, extend: Igdb::ImageRepresenter, class: OpenStruct # The list of screenshots of the game.
  collection :alternative_names, extend: Igdb::AlternativeNameRepresenter, class: OpenStruct
end

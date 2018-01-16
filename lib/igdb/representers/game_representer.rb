require 'ostruct'
require 'representable/hash'

# URL path: /games/
# Video Games!
module Igdb
  class GameRepresenter < Igdb::Representer
    collection_representer class: Igdb::Game

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
    property :first_release_date # Initial release date of the game.
    property :status # Release status, e.g. released, alpha, beta, etc.

    property :time_to_beat, extend: Igdb::TimeToBeatRepresenter, # See the Time to beat object reference.
                            class: Igdb::TimeToBeat
    property :cover, extend: Igdb::ImageRepresenter, # Cover image.
                     class: Igdb::Image
    property :esrb, extend: Igdb::EsrbRepresenter, # ESRB rating.
                    class: Igdb::Esrb
    property :pegi, extend: Igdb::PegiRepresenter, # PEGI rating.
                    class: Igdb::Pegi
    property :external, extend: Igdb::ExternalRepresenter,
                        class: Igdb::External

    collection :developers
    collection :publishers
    collection :game_engines
    collection :player_perspectives
    collection :game_modes
    collection :keywords
    collection :themes
    collection :genres
    collection :screenshots
    collection :tags
    collection :games
    collection :dlcs
    collection :expansions
    collection :standalone_expansions
    collection :bundles

    collection :release_dates, extend: Igdb::ReleaseDateRepresenter,
                               class: Igdb::ReleaseDate
    collection :alternative_names, extend: Igdb::AlternativeNameRepresenter,
                                   class: Igdb::AlternativeName
    collection :videos, extend: Igdb::VideoRepresenter,
                        class: Igdb::Video
    collection :websites, extend: Igdb::WebsiteRepresenter,
                          class: Igdb::Website
  end
end

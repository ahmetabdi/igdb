# URL path: /collections/
# Collection, AKA Series
module Igdb::CollectionRepresenter
  include Igdb::Representer

  collection :games, extend: Igdb::GameRepresenter, class: Igdb::Game # List of games character appears in.
end

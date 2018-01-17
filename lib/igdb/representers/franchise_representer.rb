require 'representable/json'

# URL path: /franchises/
# A list of video game franchises such as Star Wars.
module Igdb
  class FranchiseRepresenter < Igdb::Representer
    collection_representer class: Igdb::Franchise

    collection :games
  end
end

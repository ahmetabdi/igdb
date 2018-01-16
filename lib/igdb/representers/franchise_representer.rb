require 'representable/json'

class Igdb::FranchiseRepresenter < Igdb::Representer
  collection_representer class: Igdb::Franchise
  
  collection :games
end

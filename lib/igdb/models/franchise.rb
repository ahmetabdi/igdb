module Igdb
  class Franchise < Igdb::ApiResource
    @path = 'franchises'
    @representer = Igdb::FranchiseRepresenter
  end
end

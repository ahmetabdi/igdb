class Igdb::Franchise < Igdb::ApiResource
    @path = 'franchises'
    @representer = Igdb::FranchiseRepresenter
end
class Igdb::Collection < Igdb::ApiResource
    @path = 'collections'
    @representer = Igdb::CollectionRepresenter
end
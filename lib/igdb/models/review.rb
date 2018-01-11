class Igdb::Review < Igdb::ApiResource
    @path = 'reviews'
    @representer = Igdb::ReviewRepresenter
end
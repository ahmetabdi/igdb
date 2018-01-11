class Igdb::Genre < Igdb::ApiResource
    @path = 'genres'
    @representer = Igdb::GenreRepresenter
end
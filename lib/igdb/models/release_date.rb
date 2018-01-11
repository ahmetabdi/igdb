class Igdb::ReleaseDate < Igdb::ApiResource
    @path = 'release_dates'
    @representer = Igdb::ReleaseDateRepresenter
end
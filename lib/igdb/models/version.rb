class Igdb::Version < Igdb::ApiResource
    @path = 'versions'
    @representer = Igdb::VersionRepresenter
end
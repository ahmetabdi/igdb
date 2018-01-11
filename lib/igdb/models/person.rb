class Igdb::Person < Igdb::ApiResource
    @path = 'people'
    @representer = Igdb::PersonRepresenter
end
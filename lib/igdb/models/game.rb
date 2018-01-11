class Igdb::Game < Igdb::ApiResource
    @path = 'games'
    @representer = Igdb::GameRepresenter
end
class Igdb::Video < Igdb::ApiResource
    @path = 'videos'
    @representer = Igdb::VideoRepresenter
end
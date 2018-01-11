class Igdb::Image < Igdb::ApiResource
    @path = 'images'
    @representer = Igdb::ImageRepresenter
end
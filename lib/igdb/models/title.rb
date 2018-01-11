class Igdb::Title < Igdb::ApiResource
    @path = 'titles'
    @representer = Igdb::TitleRepresenter
end
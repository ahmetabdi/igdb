class Igdb::Page < Igdb::ApiResource
    @path = 'pages'
    @representer = Igdb::PageRepresenter
end
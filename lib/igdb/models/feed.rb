class Igdb::Feed < Igdb::ApiResource
    @path = 'feeds'
    @representer = Igdb::FeedRepresenter
end
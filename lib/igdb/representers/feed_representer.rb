require 'representable/json'

class Igdb::FeedRepresenter < Igdb::Representer
  collection_representer class: Igdb::Feed
  
  property :content
  property :category
  property :user
  property :games
  property :title
  property :feed_likes_count
end

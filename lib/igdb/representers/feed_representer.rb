# URL path: /feeds/
# Feed items are a social feed of status updates, media and news articles.
module Igdb::FeedRepresenter
  include Igdb::Representer
  
  property :content
  property :category
  property :user
  property :games
  property :title
  property :feed_likes_count
end

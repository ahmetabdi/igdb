require 'representable/json'

class Igdb::FeedRepresenter < Igdb::Representer

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at
  
  property :content
  property :category
  property :user
  property :games
  property :title
  property :feed_likes_count
end

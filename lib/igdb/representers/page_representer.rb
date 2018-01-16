require 'representable/json'

class Igdb::PageRepresenter < Igdb::Representer

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at
  
  property :content
  property :category
  property :sub_category
  property :country
  property :color
  property :user
  property :description
  property :page_follows_count
  property :logo
  property :background
  property :facebook
  property :twitter
  property :twitch
  property :instagram
  property :youtube
  property :steam
  property :linkedin
  property :pinterest
  property :soundcloud
  property :google_plus
  property :reddit
  property :battlenet
  property :origin
  property :uplay
  property :discord
  
  collection :game
  collection :company
end

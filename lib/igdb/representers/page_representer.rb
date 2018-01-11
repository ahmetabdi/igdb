# URL path: /pages/
# Our multipurpose page system is currently used for youtubers and media organisations.
module Igdb::PageRepresenter
  include Igdb::Representer
  
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
  
  collection :game, extend: Igdb::GameRepresenter, class: Igdb::Game
  collection :company, extend: Igdb::CompanyRepresenter, class: Igdb::Company
end

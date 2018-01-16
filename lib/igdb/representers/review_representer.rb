require 'representable/json'

# URL path: /reviews/
module Igdb
  class ReviewRepresenter < Igdb::Representer
    collection_representer class: Igdb::Review

    property :id
    property :username
    property :slug
    property :url
    property :title
    property :created_at
    property :updated_at
    property :game
    property :category
    property :likes
    property :views
    property :rating_category
    property :platform
    property :video # Youtube video slug
    property :introduction
    property :content
    property :conclusion
    property :positive_points
    property :negative_points
  end
end

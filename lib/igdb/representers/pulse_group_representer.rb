# URL path: /pulse_groups/
require 'representable/json'

class Igdb::PulseGroupRepresenter < Igdb::Representer
  collection_representer class: Igdb::PulseGroup
  
  property :id
  property :name
  property :category
  property :created_at
  property :updated_at
  property :published_at
  property :game
  
  collection :tags
  collection :pulses
end

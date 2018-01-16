# URL path: /pulse_groups/
require 'representable/json'

class Igdb::PulseGroupRepresenter < Igdb::Representer
  
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

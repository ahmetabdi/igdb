# URL path: /pulse_groups/
module Igdb::PulseGroupRepresenter
  include Representable::JSON
  
  property :id
  property :name
  property :category
  property :created_at
  property :updated_at
  property :published_at
  property :game
  
  collection :tags
  collection :pulses, extend: Igdb::PulseRepresenter, class: Igdb::Pulse
end

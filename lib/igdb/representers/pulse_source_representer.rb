# URL path: /pulse_sources/
require 'representable/json'

class Igdb::PulseSourceRepresenter < Igdb::Representer
  collection_representer class: Igdb::PulseSource
  
  property :id
  property :name
  property :game
  property :page
end

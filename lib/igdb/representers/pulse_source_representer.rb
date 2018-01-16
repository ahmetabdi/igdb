# URL path: /pulse_sources/
require 'representable/json'

class Igdb::PulseSourceRepresenter < Igdb::Representer
  
  property :id
  property :name
  property :game
  property :page
end

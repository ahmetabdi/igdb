# URL path: /pulse_sources/
module Igdb::PulseSourceRepresenter
  include Representable::JSON
  
  property :id
  property :name
  property :game
  property :page
end

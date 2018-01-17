module Igdb
  class Pulse < Igdb::ApiResource
    @path = 'pulses'
    @representer = Igdb::PulseRepresenter
  end
end

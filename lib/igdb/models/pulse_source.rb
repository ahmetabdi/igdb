module Igdb
  class PulseSource < Igdb::ApiResource
    @path = 'pulse_sources'
    @representer = Igdb::PulseSourceRepresenter
  end
end

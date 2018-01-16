module Igdb
  class PulseGroup < Igdb::ApiResource
    @path = 'pulse_groups'
    @representer = Igdb::PulseGroupRepresenter
  end
end

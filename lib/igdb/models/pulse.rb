class Igdb::Pulse < Igdb::ApiResource
    @path = 'pulses'
    @representer = Igdb::PulseRepresenter
end
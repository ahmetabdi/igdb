class Igdb::AlternativeName < Igdb::ApiResource
    @path = 'alternative_names'
    @representer = Igdb::AlternativeNameRepresenter
end
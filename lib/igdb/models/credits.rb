class Igdb::Credit < Igdb::ApiResource
    @path = 'credits'
    @representer = Igdb::CreditRepresenter
end
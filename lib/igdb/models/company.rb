class Igdb::Company < Igdb::ApiResource
  @path = 'companies'
  @representer = Igdb::CompanyRepresenter
end

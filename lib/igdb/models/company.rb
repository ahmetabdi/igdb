module Igdb
  class Company < Igdb::ApiResource
    @path = 'companies'
    @representer = Igdb::CompanyRepresenter
  end
end

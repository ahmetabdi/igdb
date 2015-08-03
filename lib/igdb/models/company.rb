class Igdb::Company < Igdb::ApiResource

  def self.meta
    build_single_resource(Igdb::Requester.get("companies/meta"), CompanyRepresenter).size
  end

  def self.find(id)
    build_single_resource(Igdb::Requester.get("companies/#{id}")['company'], CompanyRepresenter)
  end

end

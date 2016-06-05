class Igdb::Company < Igdb::ApiResource

  def self.meta
    build_single_resource(Igdb::Requester.get("companies/meta"), Igdb::CompanyRepresenter).size
  end

  def self.find(id)
    build_single_resource(Igdb::Requester.get("companies/#{id}")['company'], Igdb::CompanyRepresenter)
  end

  # Show games of a specific company
  def games(opts={})
    params = Hash.new.tap do |hash|
      hash['offset'] = opts[:offset] || 0
      hash['limit'] = opts[:limit] || 100
    end
    build_for_collection(Igdb::Requester.get("companies/#{id}/games", params)['games'], Igdb::CompanyRepresenter)
  end

end

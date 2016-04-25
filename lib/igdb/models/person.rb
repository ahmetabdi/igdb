class Igdb::Person < Igdb::ApiResource

  def self.meta
    build_single_resource(Igdb::Requester.get('people/meta'), Igdb::PersonRepresenter).size
  end

  def self.find(id)
    build_single_resource(Igdb::Requester.get("people/#{id}")['person'], Igdb::PersonRepresenter)
  end

  def self.all(opts={})
    params = Hash.new.tap do |hash|
      hash['offset'] = opts[:offset] || 0
      hash['limit'] = opts[:limit] || 100
    end
    build_collection(Igdb::Requester.get("people", params)['people'], Igdb::PersonRepresenter)
  end

end

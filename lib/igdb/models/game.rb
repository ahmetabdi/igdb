class Igdb::Game < Igdb::ApiResource

  def self.meta
    build_single_resource(Igdb::Requester.get("games/meta"), GameRepresenter).size
  end

  def self.find(id)
    build_single_resource(Igdb::Requester.get("games/#{id}")['game'], GameRepresenter)
  end

  def self.search(opts={})
    params = Hash.new.tap do |hash|
      hash['q'] = opts[:query] if opts[:query]
      hash['filters'] = opts[:filters] if opts[:filters]
    end
    build_collection(Igdb::Requester.get("games/search", params)['games'], GameRepresenter)
  end

  def self.all(opts={})
    params = Hash.new.tap do |hash|
      hash['offset'] = opts[:offset] || 0
      hash['limit'] = opts[:limit] || 100
    end
    build_collection(Igdb::Requester.get("games", params)['games'], GameRepresenter)
  end

end

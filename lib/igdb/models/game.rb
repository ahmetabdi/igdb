require 'representable/json'
class Igdb::Game < Igdb::ApiResource

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

end

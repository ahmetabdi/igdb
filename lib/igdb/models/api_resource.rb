require 'representable/json'
require 'ostruct'

class Igdb::ApiResource < OpenStruct
  class << self
    attr_accessor :path
    attr_accessor :representer
  end

  def self.count
    Igdb::Requester.get("#{self.path}/count")['count']
  end

  def self.find(id)
    params = { fields: '*' }
    build_single_resource(Igdb::Requester.get("#{self.path}/#{id}", params)[0], self.representer)
  end

  def self.search(opts={})
    params = Hash.new.tap do |hash|
      hash['search'] = opts[:query] if opts[:query]
      hash['filters'] = opts[:filters] if opts[:filters]
      hash['fields'] = '*'
    end
    build_collection(Igdb::Requester.get("#{self.path}", params), self.representer)
  end

  def self.all(opts={})
    params = Hash.new.tap do |hash|
      hash['offset'] = opts[:offset] || 0
      hash['limit'] = opts[:limit] || 50
      hash['fields'] = '*'
    end
    build_collection(Igdb::Requester.get("#{self.path}", params), self.representer)
  end

  private
  def self.build_single_resource(response, representer)
    self.new.extend(representer).from_hash(response)
  end

  def self.build_collection(response, representer)
    response.reduce([]) do |resources, response|
      resources << self.new.extend(representer).from_hash(response)
    end
  end

  def build_for_collection(response, representer)
    [].extend(representer.for_collection).from_hash(response)
  end
end

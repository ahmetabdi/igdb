require 'representable/json'
require 'ostruct'

class Igdb::ApiResource < OpenStruct
  class << self
    attr_accessor :path
    attr_accessor :representer
    
    def count
      Igdb::Requester.get("#{self.path}/count")['count']
    end
    
    def meta
      Igdb::Requester.get("#{self.path}/meta")
    end
  
    def find(id, options = {})
      params = options
      params[:fields] = '*' unless params[:fields]
      build_single_resource(Igdb::Requester.get("#{path}/#{id}", params)[0], representer)
    end
    
    def slug(id, options = {})
      params = options
      params[:fields] = '*' unless params[:fields]
      params[:'filter[slug][eq]'] = id
      build_single_resource(Igdb::Requester.get("#{path}/", params)[0], representer)
    end

    def search(opts={})
      params = Hash.new.tap do |hash|
        hash['search'] = opts[:query] if opts[:query]
        hash['filters'] = opts[:filters] if opts[:filters]
        hash['fields'] = '*'
      end
      
      build_collection(Igdb::Requester.get("#{path}/", params), representer)
    end
  
    def all(opts={})
      params = Hash.new.tap do |hash|
        hash['offset'] = opts[:offset] || 0
        hash['limit'] = opts[:limit] || 50
        hash['fields'] = '*'
      end
      
      build_collection(Igdb::Requester.get("#{path}/", params), self.representer)
    end
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

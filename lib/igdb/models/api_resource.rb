require 'representable/json'
require 'ostruct'

module Igdb
  class ApiResource < OpenStruct
    class << self
      attr_accessor :path, :representer

      def count
        Igdb::Requester.get("#{path}/count")['count']
      end

      def meta
        Igdb::Requester.get("#{path}/meta")
      end

      def find(id, options = {})
        params = options
        params[:fields] = '*' unless params[:fields]

        if id.class == Array
          build_collection(Igdb::Requester.get("#{path}/#{id.join(',')}", params), representer)
        else
          build_single_resource(Igdb::Requester.get("#{path}/#{id}", params)[0], representer)
        end
      end

      def slug(id, options = {})
        params = options
        params['fields'] = '*' unless params[:fields]
        params['filter[slug][eq]'] = id

        build_single_resource(Igdb::Requester.get("#{path}/", params)[0], representer)
      end

      def search(opts = {})
        params = {}.tap do |hash|
          hash['search'] = opts[:query] if opts[:query]
          hash['filters'] = opts[:filters] if opts[:filters]
          hash['fields'] = '*'
        end

        build_collection(Igdb::Requester.get("#{path}/", params), representer)
      end

      def all(opts = {})
        params = {}.tap do |hash|
          hash['offset'] = opts[:offset] || 0
          hash['limit'] = opts[:limit] || 50
          hash['fields'] = '*'
        end

        build_collection(Igdb::Requester.get("#{path}/", opts), representer)
      end

      private

      def build_single_resource(response, representer)
        representer.new(new).from_hash(response)
      end

      def build_collection(response, representer)
        representer.for_collection.new([]).from_hash(response)
      end
    end
  end
end

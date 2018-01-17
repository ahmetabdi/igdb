require 'singleton'

module Igdb
  module Configuration
    class Api
      include Singleton

      attr_reader :base_url, :version, :api_key

      def initialize
        self.base_url = 'https://api-2445582011268.apicast.io'.freeze
        self.version = 1
      end

      def connect(api_key)
        @api_key = api_key
      end

      def url_for(action, params = {})
        url = URI.join(base_url, action)
        url.query = URI.encode_www_form(params) unless params.empty?
        url.to_s
      end

      private

        attr_writer :base_url, :api_key, :version
    end
  end
end

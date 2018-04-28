require 'singleton'

module Igdb::Configuration
  class Api
    include Singleton

    DEFAULT_API_URL = 'https://api-endpoint.igdb.com'

    attr_reader :base_url, :api_key, :version

    def initialize
      self.version = 1.freeze
    end

    def connect(api_key)
      @api_key = api_key
    end

    def api_url
      @base_url || DEFAULT_API_URL
    end

    def set_api_url(url)
      @base_url = url
    end

    def url_for(action, params={})
      url = URI.parse "#{File.join(api_url, action)}/"
      url.query = URI.encode_www_form(params) unless params.empty?
      url.to_s
    end

    private
      attr_writer :base_url, :api_key, :version
  end
end

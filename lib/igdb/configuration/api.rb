require 'singleton'

module Igdb::Configuration
  class Api
    include Singleton

    attr_reader :base_url, :version, :api_key

    def initialize
      self.base_url = "https://www.igdb.com/api/v1/".freeze
      self.version = 1.freeze
    end

    def connect(api_key)
      @api_key = api_key
    end

    def url_for(action, params={})
      url = URI.join(base_url, action)
      url.query = URI.encode_www_form(params) if params
      url.to_s
    end

    private
      attr_writer :base_url, :api_key, :version, :oauth_url
  end
end

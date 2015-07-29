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
      begin
        @api_key = api_key
        true
      rescue Igdb::Exception::Api
        false
      end
    end

    def url_for(action, params={})
      # params[:api_key] = api_key
      url = URI.join(base_url, action)
      url.query = URI.encode_www_form(params) if params
      url.to_s
    end

    private
      attr_writer :base_url, :api_key, :version, :oauth_url

  end
end

# require 'net/http'
# require 'openssl'

# uri = URI('https://www.igdb.com/api/v1/games')
# req = Net::HTTP::Get.new(uri)
# req['Accept'] = 'application/json'
# req['Authorization'] = 'Token token="egBf-guz6Z8ZIMYw0GMykId-V0-OumqBwy988YFyq2E"'

# http = Net::HTTP.new uri.host, uri.port
# http.use_ssl = true

# http.verify_mode = OpenSSL::SSL::VERIFY_PEER
# response = http.request(req)

# puts response.body

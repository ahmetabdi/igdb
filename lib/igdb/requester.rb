require 'rest_client'
require 'json'

module Igdb
  class Requester
    class << self
      def get(action, params = {})
        url = api.url_for(action, params)
        perform_request do
          parse_response(RestClient.get(url, request_headers))
        end
      end

      def post(action, params = {}, form_data = {})
        url = api.url_for(action, params)
        perform_request do
          parse_response(RestClient.post(url, form_data.to_json, request_headers))
        end
      end

      def delete(action)
        url = api.url_for(action)
        perform_request do
          parse_response(RestClient.post(url, {}, request_headers))
        end
      end

      private

      def api
        Igdb::Configuration::Api.instance
      end

      def perform_request
          yield
      rescue RestClient::Exception => e
          raise Igdb::Exception::Api, e.message
      end

      def request_headers
        {}.tap do |headers|
          headers['Accept'] = 'application/json'
          headers['user-key'] = api.api_key
        end
      end

      def parse_response(response_body)
          JSON.parse(response_body)
      rescue JSON::ParserError => e
          raise Igdb::Exception::JsonParseError, "Response body could not be parsed: #{e.message}"
      end
    end
  end
end

require 'rest_client'
require 'ostruct'

class Igdb::Requester
  class << self

    def get(action, params={})
      puts "GET: #{action} #{params}"
      url = api.url_for(action, params)
      puts "URL: #{url}"
      perform_request do
        parse_response(RestClient.get(url, request_headers))
      end
    end

    def post(action, params={}, form_data={})
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

    def perform_request(&block)
      begin
        block.call
      rescue RestClient::Exception => e
        message = if e.http_body.strip.empty?
          e
        else
          message = ["Exception:"]
          message << "@message=\"#{e.message}\""

          JSON.parse(e.http_body).each do |k,v|
            message << "@#{k}=\"#{v}\""
          end
          message.join(" ")
        end
        raise Igdb::Exception::Api.new(message).inspect
      end
    end

    def request_headers
      Hash.new.tap do |headers|
        headers['Accept'] = 'application/json'
        headers['Content-Type'] = 'application/json'
        headers['Authorization'] = 'Token token="' + api.api_key + '"'
      end
    end

    def parse_response(response_body)
      begin
        JSON.parse(response_body)#, object_class: OpenStruct)
      rescue JSON::ParserError => e
        raise Enceladus::Exception::JsonParseError.new("Response body could not be parsed: #{e.message}")
      end
    end
  end
end

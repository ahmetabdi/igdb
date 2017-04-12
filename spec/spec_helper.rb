require 'bundler/setup'
require 'pry'
require 'simplecov'
SimpleCov.start

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'igdb_api'
require 'vcr'

RSpec.configure do |c|
  c.add_setting :test_url, default: "http://www.google.com"
  c.add_setting :default_api_url, default: "https://igdbcom-internet-game-database-v1.p.mashape.com"
end

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.allow_http_connections_when_no_cassette = true
  config.hook_into :webmock
  config.filter_sensitive_data("<X-Mashape-Key>") { ENV["IGDB_API_KEY"] }
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'igdb'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  config.allow_http_connections_when_no_cassette = true
  config.hook_into :webmock
end

require 'require_all'
require_all 'lib'

module Igdb
  def self.connect(api_key = 'egBf-guz6Z8ZIMYw0GMykId-V0-OumqBwy988YFyq2E')
    Igdb::Configuration::Api.instance.tap do |api|
      api.connect(api_key)
    end
  end
end

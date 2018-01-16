module Igdb
  class Credits < Igdb::ApiResource
    @path = 'credits'
    @representer = Igdb::CreditsRepresenter
  end
end

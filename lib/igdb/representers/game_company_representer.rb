module Igdb::GameCompanyRespresenter
  include Representable::JSON

  property :id
  property :parent
  property :name
  property :developer
  property :publisher
end

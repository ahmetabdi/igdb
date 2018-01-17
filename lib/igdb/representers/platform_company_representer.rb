require 'representable/json'

module Igdb
  class PlatformCompanyRepresenter < Representable::Decorator
    include Representable::JSON

    collection_representer class: Igdb::PlatformCompany

    property :company
    property :comment # What does that company do.
  end
end

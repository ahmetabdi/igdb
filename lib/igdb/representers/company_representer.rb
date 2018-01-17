require 'ostruct'
require 'representable/json'

# URL path: /companies/
# Video game companies. Both publishers & developers
module Igdb
  class CompanyRepresenter < Igdb::Representer
    collection_representer class: Igdb::Company

    property :logo
    property :description
    property :country
    property :website
    property :start_date
    property :start_date_category
    property :changed_company_id
    property :change_date
    property :change_date_category
    property :twitter # The URL of the Twitter profile

    collection :published
    collection :developed
  end
end

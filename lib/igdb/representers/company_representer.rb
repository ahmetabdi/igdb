module Igdb::CompanyRepresenter
  include Igdb::BaseRepresenter

  property :logo, extend: Igdb::ImageRepresenter, class: OpenStruct 
  property :description
  property :country
  property :website
  property :start_date
  property :start_date_category
  property :changed_company_id
  property :change_date_category
  property :twitter

  collection :published
  collection :developed
end

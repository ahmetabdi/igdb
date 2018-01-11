require 'ostruct'

# URL path: /companies/
# Video game companies. Both publishers & developers
module Igdb::CompanyRepresenter
  include Igdb::Representer
  
  property :logo, extend: Igdb::ImageRepresenter, class: OpenStruct 
  property :description
  property :country
  property :website
  property :start_date
  property :start_date_category
  property :changed_company_id
  property :change_date
  property :change_date_category
  property :twitter
  
  collection :published, extend: Igdb::GameRepresenter, class: Igdb::Game
  collection :developed, extend: Igdb::GameRepresenter, class: Igdb::Game
end

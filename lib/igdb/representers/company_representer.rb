require 'ostruct'
require 'representable/json'

class Igdb::CompanyRepresenter < Igdb::Representer
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
  property :twitter
  
  collection :published
  collection :developed
end

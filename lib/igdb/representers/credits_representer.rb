require 'representable/json'

class Igdb::CreditsRepresenter < Igdb::Representer

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at
  
  property :game
  property :category
  property :company
  property :position
  property :person
  property :character
  property :person_title
  property :country
  property :credited_name
  property :character_credited_name
end

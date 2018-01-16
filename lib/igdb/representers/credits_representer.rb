require 'representable/json'

class Igdb::CreditsRepresenter < Igdb::Representer
  collection_representer class: Igdb::Credits
  
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

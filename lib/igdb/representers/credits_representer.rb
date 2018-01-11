# URL path: /credits/
# Contains all employees responsible for working on the game.
module Igdb::CreditsRepresenter
  include Igdb::Representer
  
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

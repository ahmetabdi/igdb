require 'representable/json'

# URL path: /credits/
# Contains all employees responsible for working on the game.
module Igdb
  class CreditsRepresenter < Igdb::Representer
    collection_representer class: Igdb::Credits

    property :game
    property :category
    property :company
    property :position # Position in the credits list.
    property :person
    property :character
    property :person_title
    property :country
    # Credited name of the person only for overriding when misspelled or changed in credits.
    property :credited_name
    # Credited name of the character only for overriding when misspelled or changed in credits.
    property :character_credited_name
  end
end

require 'representable/json'

# URL path: /people/
# Individuals who are in the video games industry
module Igdb
  class PersonRepresenter < Igdb::Representer
    collection_representer class: Igdb::Person

    property :mug_shot

    collection :games
    collection :characters
    collection :voice_acted
  end
end

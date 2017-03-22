module Igdb::PersonRepresenter
  include Igdb::BaseRepresenter

  property :mug_shot, extend: Igdb::ImageRepresenter, class: OpenStruct
  property :dob # The day of birth of the person ISO standard is followed.
  property :country # The country of the person in http://en.wikipedia.org/wiki/ISO_3166-1_numeric .
  property :bio # The bio of the person.

  collection :games
  collection :characters
  collection :voice_acted
end

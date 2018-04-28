module Igdb::CharacterRepresenter
  include Igdb::BaseRepresenter

  property :mug_shot, extend: Igdb::ImageRepresenter, class: OpenStruct
  property :gender
  property :species

  collection :akas
  collection :games
  collection :people
end
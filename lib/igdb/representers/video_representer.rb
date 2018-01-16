require 'representable/json'

class Igdb::VideoRepresenter < Igdb::Representer
  collection_representer class: Igdb::Video

  property :name
  property :video_id
end
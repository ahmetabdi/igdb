require 'representable/json'

module Igdb
  class VideoRepresenter < Igdb::Representer
    collection_representer class: Igdb::Video

    property :name
    property :video_id
  end
end

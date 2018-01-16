require 'representable/json'

class Igdb::VideoRepresenter < Igdb::Representer

  property :name
  property :video_id
end
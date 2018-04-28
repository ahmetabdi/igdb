module Igdb::GameEngineRepresenter
  include Igdb::BaseRepresenter

  property :logo, extend: Igdb::ImageRepresenter, class: OpenStruct

  collection :games
  collection :companies
  collection :platforms
end
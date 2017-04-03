module Igdb::PlatformPresenter
  include Igdb::BaseRepresenter

  property :logo, extend: Igdb::ImageRepresenter, class: OpenStruct
  property :website
  property :summary
  property :alternative_name
  property :generation

  collection :games
  collection :versions
end
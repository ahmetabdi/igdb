module Igdb::ReleaseDateRepresenter
  include Igdb::BaseRepresenter

  property :category
  property :platform
  property :human
  property :date
  property :region
  property :year, as: :y
  property :month, as: :m
end

module Igdb::BaseRepresenter
  include Representable::JSON

  def self.included(base)
    base.include Representable::JSON
  end

  property :id
  property :name
  property :slug
  property :url
  property :created_at
  property :updated_at
end
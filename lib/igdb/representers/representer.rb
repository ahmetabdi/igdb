# URL path: /game_engines/
# Video game engines such as unreal engine.
module Igdb::Representer
  include Representable::JSON

  property :id # The id of the character.
  property :name # The name of the character.
  property :slug # 
  property :url # 
  property :created_at
  property :updated_at
  
  def self.included(base)
    base.include Representable::JSON
  end
end

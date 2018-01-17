module Igdb
  class Character < Igdb::ApiResource
    @path = 'characters'
    @representer = Igdb::CharacterRepresenter
  end
end

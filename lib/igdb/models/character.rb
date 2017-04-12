class Igdb::Character < Igdb::ApiResource
  @path = 'characters'
  @representer = Igdb::CharacterRepresenter
end
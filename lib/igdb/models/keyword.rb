class Igdb::Keyword < Igdb::ApiResource
  @path = 'keywords'
  @representer = Igdb::KeywordRepresenter
end
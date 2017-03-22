module Igdb
  #Utilities
  autoload :Configuration, 'igdb/configuration/api'
  autoload :Requester, 'igdb/requester'
  autoload :Exception, 'igdb/exceptions'

  #Models
  autoload :ApiResource, 'igdb/models/api_resource'
  autoload :Character, 'igdb/models/character'
  autoload :Collection, 'igdb/models/collection'
  autoload :Company, 'igdb/models/company'
  autoload :Franchise, 'igdb/models/franchise'
  autoload :Game, 'igdb/models/game'
  autoload :GameEngine, 'igdb/models/game_engine'
  autoload :GameMode, 'igdb/models/game_mode'
  autoload :Genre, 'igdb/models/genre'
  autoload :Keyword, 'igdb/models/keyword'
  autoload :Person, 'igdb/models/person'
  autoload :Platform, 'igdb/models/platform'
  autoload :PlayerPerspective, 'igdb/models/player_perspective'
  autoload :Pulse, 'igdb/models/pulse'
  autoload :ReleaseDate, 'igdb/models/release_date'
  autoload :Review, 'igdb/models/review'
  autoload :Theme, 'igdb/models/theme'

  #Presenters
  autoload :BaseRepresenter, 'igdb/representers/base_representer'
  autoload :AlternativeNameRepresenter, 'igdb/representers/alternative_name_representer'
  autoload :CharacterRepresenter, 'igdb/representers/character_representer'
  autoload :CollectionRepresenter, 'igdb/representers/collection_representer'
  autoload :CompanyRepresenter, 'igdb/representers/company_representer'
  autoload :FranchiseRepresenter, 'igdb/representers/franchise_representer'
  autoload :GameEngineRepresenter, 'igdb/representers/game_engine_representer'
  autoload :GameModeRepresenter, 'igdb/representers/game_mode_representer'
  autoload :GameRepresenter, 'igdb/representers/game_representer'
  autoload :GenreRepresenter, 'igdb/representers/genre_representer'
  autoload :ImageRepresenter, 'igdb/representers/image_representer'
  autoload :KeywordRepresenter, 'igdb/representers/keyword_representer'
  autoload :PersonRepresenter, 'igdb/representers/person_representer'
  autoload :PlatformRepresenter, 'igdb/representers/platform_representer'
  autoload :PlayerPerspectiveRepresenter, 'igdb/representers/player_perspective_representer'
  autoload :PulseRepresenter, 'igdb/representers/pulse_representer'
  autoload :ReleaseDateRepresenter, 'igdb/representers/release_date_representer'
  autoload :ReviewRepresenter, 'igdb/representers/review_representer'
  autoload :ThemeRepresenter, 'igdb/representers/theme_representer'
  autoload :VideoRepresenter, 'igdb/representers/video_representer'

  def self.set_api_url(api_url)
    Igdb::Configuration::Api.instance.tap do |api|
      api.set_api_url(api_url)
    end
  end

  def self.connect(api_key)
    Igdb::Configuration::Api.instance.tap do |api|
      api.connect(api_key)
    end
  end
end

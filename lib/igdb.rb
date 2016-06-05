module Igdb
  #Utilities
  autoload :Configuration, 'igdb/configuration/api'
  autoload :Requester, 'igdb/requester'
  autoload :Exception, 'igdb/exceptions'

  #Models
  autoload :ApiResource, 'igdb/models/api_resource'
  autoload :Company, 'igdb/models/company'
  autoload :Game, 'igdb/models/game'
  autoload :GameCompany, 'igdb/models/game_company'
  autoload :GameGenre, 'igdb/models/game_genre'
  autoload :GameReleaseDate, 'igdb/models/game_release_date'
  autoload :GameScreenshot, 'igdb/models/game_screenshot'
  autoload :GameTheme, 'igdb/models/game_theme'
  autoload :GameVideo, 'igdb/models/game_video'
  autoload :Person, 'igdb/models/person'
  autoload :Shop, 'igdb/models/shop'

  #Presenters
  autoload :CompanyRepresenter, 'igdb/representers/company_representer'
  autoload :GameCompanyRespresenter, 'igdb/representers/game_company_representer'
  autoload :GameGenreRepresenter, 'igdb/representers/game_genre_representer'
  autoload :GameReleaseDateRespresenter, 'igdb/representers/game_release_date_representer'
  autoload :GameRepresenter, 'igdb/representers/game_representer'
  autoload :GameScreenshotRepresenter, 'igdb/representers/game_screenshot_representer'
  autoload :GameThemeRepresenter, 'igdb/representers/game_theme_representer'
  autoload :GameVideoRepresenter, 'igdb/representers/game_video_representer'
  autoload :PersonRepresenter, 'igdb/representers/person_representer'

  def self.connect(api_key)
    Igdb::Configuration::Api.instance.tap do |api|
      api.connect(api_key)
    end
  end
end

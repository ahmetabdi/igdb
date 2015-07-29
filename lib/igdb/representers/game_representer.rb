module GameRepresenter
  include Representable::JSON

  property :id # The id of the game.
  property :name # The name of the game.
  property :slug # Not documented in V1 API
  property :summary # Not documented in V1 API
  property :alternative_name # The alternative name of the game.
  property :rating # The rating of the game.
  property :platform_name # The platform name.
  property :release_date  # Release date of the game.
  property :developer # True if the company is the developer of the game.
  property :publisher # True if the company is the publisher of the game.
  property :name  # The name of the company.
  property :cover # The cover image of the game.
  property :subtitle  # The subtitle of the screenshot.
  property :src # The source of the image in the thumbnail format.

  collection :release_dates, extend: GameReleaseDateRespresenter, class: Igdb::GameReleaseDate # The release dates of the game.
  collection :screenshots, extend: GameScreenshotRepresenter, class: Igdb::GameScreenshot # The list of screenshots of the game.
  collection :videos, extend: GameVideoRepresenter, class: Igdb::GameVideo # Not documented in v1 API
  collection :genres, extend: GameGenreRepresenter, class: Igdb::GameGenre # Not documented in v1 API
  collection :themes, extend: GameThemeRepresenter, class: Igdb::GameTheme # Not documented in v1 API
  collection :companies, extend: GameCompanyRespresenter, class: Igdb::GameCompany # List of companies that developed and published.
  # collection :games # The list of games in the database.
end

module Igdb::CompanyRepresenter
  include Representable::JSON

  property :id # The id of the game.
  property :name # The name of the company.
  property :average_rating # The average rating of all the games the company that has developed or published.
  property :parent # The id of the parent company.
  property :size # The number of companies in the database.

  collection_representer class: Igdb::Game
end

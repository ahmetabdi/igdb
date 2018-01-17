# IGDB: Internet Game Database
[![CircleCI](https://circleci.com/gh/kalynrobinson/igdb.svg?style=svg)](https://circleci.com/gh/kalynrobinson/igdb)
[![Build Status](https://travis-ci.org/kalynrobinson/igdb.svg?branch=master)](https://travis-ci.org/kalynrobinson/igdb)
[![Maintainability](https://api.codeclimate.com/v1/badges/dd41fd1ba6674f21b20c/maintainability)](https://codeclimate.com/github/kalynrobinson/igdb/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/dd41fd1ba6674f21b20c/test_coverage)](https://codeclimate.com/github/kalynrobinson/igdb/test_coverage)
[![Gem Version](https://badge.fury.io/rb/igdb2.svg)](http://badge.fury.io/rb/igdb2)
[![Dependency Status](https://beta.gemnasium.com/badges/github.com/kalynrobinson/igdb.svg)](https://beta.gemnasium.com/projects/github.com/kalynrobinson/igdb)

## Installation
```ruby
$ gem install igdb2
```
## Usage

##### Connect
```ruby
$ Igdb.connect('api_key')
```
If no parameter is given, Igdb will default to ENV['IGDB_KEY'].
```ruby
$ Igdb.connect # => Igdb.connect(ENV['IGDB_KEY'])
```
##### Usage
  Find game by ID
```ruby
$ Igdb::Game.find(1971)
```
  Find game by ID with options
```ruby
$ Igdb::Game.find(1971, { fields: 'slug,name' })
```
  Find a game by slug
```ruby
$ Igdb::Game.slug('batman')
```
  Search for a game
```ruby
$ Igdb::Game.search(query: 'batman')
```
  Return the number of games in the database
```ruby
$ Igdb::Game.count
```
  Return a list of all games with an offset and/or limit
```ruby
$ Igdb::Game.all
$ Igdb::Game.all(limit: 10) # Limit to 10 results - Default 100
$ Igdb::Game.all(offset: 5) # Offset result starting at 5th - Default 0
```
  Return the available properties of games
```ruby
$ Igdb::Game.meta
```
### Endpoints
```ruby
Igdb::Character
Igdb::Collection
Igdb::Company
Igdb::Credits
Igdb::Feed
Igdb::Franchise
Igdb::GameEngine
Igdb::GameMode
Igdb::Game
Igdb::Genre
Igdb::Keyword
Igdb::Page
Igdb::Person
Igdb::Platform
Igdb::PlayerPerspective
Igdb::PulseGroup
Igdb::Pulse
Igdb::PulseSource
Igdb::ReleaseDate
Igdb::Review
Igdb::Theme
Igdb::Title
Igdb::Version
```
## Contributing

1. Fork it ( https://github.com/kalynrobinson/igdb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

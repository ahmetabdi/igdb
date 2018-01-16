# IGDB: Internet Game Database
[![Circle CI](https://circleci.com/gh/ahmetabdi/igdb.svg?style=svg)](https://circleci.com/gh/ahmetabdi/igdb)
[![Build Status](https://travis-ci.org/ahmetabdi/igdb.svg)](https://travis-ci.org/ahmetabdi/igdb)
[![Code Climate](https://codeclimate.com/github/ahmetabdi/igdb/badges/gpa.svg)](https://codeclimate.com/github/ahmetabdi/igdb)
[![Test Coverage](https://codeclimate.com/github/ahmetabdi/igdb/badges/coverage.svg)](https://codeclimate.com/github/ahmetabdi/igdb/coverage)
[![Gem Version](https://badge.fury.io/rb/igdb.svg)](http://badge.fury.io/rb/igdb)
[![Dependency Status](https://gemnasium.com/ahmetabdi/igdb.svg)](https://gemnasium.com/ahmetabdi/igdb)

![Banner](http://orig08.deviantart.net/b5c1/f/2011/204/b/9/umvc3_roster_by_kiradaidohji-d41fyaq.png)

## Installation
```ruby
$ gem install igdb
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

1. Fork it ( https://github.com/ahmetabdi/igdb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

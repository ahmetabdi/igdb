# IGDB: Internet Game Database
[![Build Status](https://travis-ci.org/tastycake/igdb_api.svg?branch=master)](https://travis-ci.org/tastycake/igdb_api)
[![Code Climate](https://codeclimate.com/github/tastycake/igdb_api/badges/gpa.svg)](https://codeclimate.com/github/tastycake/igdb_api)
[![Test Coverage](https://codeclimate.com/github/tastycake/igdb_api/badges/coverage.svg)](https://codeclimate.com/github/tastycake/igdb_api/coverage)

![Banner](http://orig08.deviantart.net/b5c1/f/2011/204/b/9/umvc3_roster_by_kiradaidohji-d41fyaq.png)

## Installation
```ruby
$ gem install igdb_api
```
## Usage

##### Connect
```ruby
$ Igdb.connect('api_key')
```
##### Game
  Find game by ID
```ruby
$ Igdb::Game.find(1971)
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
##### Person
  Find person by ID or name
```ruby
$ Igdb::Person.find(4)
$ Igdb::Person.find('derek-watts')
```
  Return the number of people in the database
```ruby
$ Igdb::Person.count
```
  Return a list of all games with an offset and/or limit
```ruby
$ Igdb::Person.all
$ Igdb::Person.all(limit: 10) # Limit to 10 results - Default 100
$ Igdb::Person.all(offset: 5) # Offset result starting at 5th - Default 0
```
##### Company
  Find company by ID or name
```ruby
$ Igdb::Company.find(70)
$ Igdb::Company.find('nintendo')
```
  Return the number of companies in the database.
```ruby
$ Igdb::Company.count
```
  Return the games for a company
```ruby
$ Igdb::Company.find('2000').games
```
## Contributing

1. Fork it ( https://github.com/tastycake/igdb_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

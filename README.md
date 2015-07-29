# IGDB: Internet Game Database
[![Build Status](https://travis-ci.org/ahmetabdi/igdb.svg)](https://travis-ci.org/ahmetabdi/igdb)
[![Code Climate](https://codeclimate.com/github/ahmetabdi/igdb/badges/gpa.svg)](https://codeclimate.com/github/ahmetabdi/igdb)
[![Test Coverage](https://codeclimate.com/github/ahmetabdi/igdb/badges/coverage.svg)](https://codeclimate.com/github/ahmetabdi/igdb/coverage)
[![Gem Version](https://badge.fury.io/rb/igdb.svg)](http://badge.fury.io/rb/igdb)
[![Dependency Status](https://gemnasium.com/ahmetabdi/igdb.svg)](https://gemnasium.com/ahmetabdi/igdb)

## Installation
    $ gem install igdb

## Usage

##### Connect

    $ Igdb.connect('api_key')

##### Game
  Find game by ID

    $ Igdb::Game.find(1971)

  Search for a game

    $ Igdb::Game.search(query: 'batman')

## Contributing

1. Fork it ( https://github.com/[my-github-username]/igdb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

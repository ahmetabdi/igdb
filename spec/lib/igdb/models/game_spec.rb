require 'spec_helper'
require 'pp'

describe Igdb::Game do
  subject { described_class }

  before do
    Igdb.connect(ENV['IGDB_KEY'])
  end

  describe 'public class methods' do
    context 'responds to its methods' do
      it { expect(subject).to respond_to(:meta) }
      it { expect(subject).to respond_to(:count) }
      it { expect(subject).to respond_to(:find) }
      it { expect(subject).to respond_to(:search) }
      it { expect(subject).to respond_to(:all) }
    end

    context 'executes methods correctly' do
      context 'self.meta' do
        let(:game) { VCR.use_cassette('game/meta') { subject.meta } }

        it 'return the fields of game' do
          expect(game).to be_a Array
        end
      end

      context 'self.count' do
        let(:game) { VCR.use_cassette('game/count') { subject.count } }

        it 'return the number of games in the database' do
          expect(game).to be_a Integer
        end
      end

      context 'self.find' do
        let(:game) { VCR.use_cassette('game/find') { subject.find(2000) } }

        it 'returns a game' do
          expect(game).to be_a Igdb::Game
        end

        it 'returns the correct game' do
          expect(game.name).to eq('Postal')
        end
      end

      context 'self.search' do
        let(:game) { VCR.use_cassette('game/search') { subject.search(query: 'batman') } }

        it 'returns a group of game results' do
          expect(game).to be_a Array
          expect(game).not_to be_empty
          expect(game.first).to be_a Igdb::Game
        end
      end

      context 'self.all' do
        let(:game) { VCR.use_cassette('game/all') { subject.all } }
        let(:game_with_limit) { VCR.use_cassette('game/all-limit') { subject.all(limit: 5) } }
        let(:game_with_limit_and_offset) { VCR.use_cassette('game/all-limit-and-offset') { subject.all(limit: 5, offset: 2) } }

        it 'returns a list of games' do
          expect(game).to be_a Array
          expect(game).not_to be_empty
          expect(game.first).to be_a Igdb::Game
        end

        it 'returns a limit' do
          expect(game_with_limit).to be_a Array
          expect(game_with_limit.length).to be_a Integer
        end

        it 'returns a offset' do
          expect(game_with_limit_and_offset).to be_a Array
          expect(game_with_limit_and_offset.length).to be_a Integer
        end
      end
    end
  end
end

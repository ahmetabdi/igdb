require 'spec_helper'

describe Igdb::GameEngine do
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
        let(:game_engine) { VCR.use_cassette('game_engines/meta') { subject.meta } }

        it 'return the fields of game_engine' do
          expect(game_engine).to be_a Array
        end
      end

      context 'self.count' do
        let(:game_engine) { VCR.use_cassette('game_engines/count') { subject.count } }

        it 'return the number of game engines in the database' do
          expect(game_engine).to be_a Integer
        end
      end

      context 'self.find' do
        let(:game_engine) { VCR.use_cassette('game_engines/find') { subject.find(2) } }

        it 'returns a game_engine' do
          expect(game_engine).to be_a Igdb::GameEngine
        end

        it 'returns the correct game_engine' do
          expect(game_engine.name).to eq('Frostbite')
        end
      end
    end
  end
end

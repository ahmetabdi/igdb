require 'spec_helper'

describe Igdb::GameMode do
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
        let(:game_mode) { VCR.use_cassette('game_modes/meta') { subject.meta } }

        it 'return the fields of game_mode' do
          expect(game_mode).to be_a Array
        end
      end

      context 'self.count' do
        let(:game_mode) { VCR.use_cassette('game_modes/count') { subject.count } }

        it 'return the number of companies in the database' do
          expect(game_mode).to be_a Integer
        end
      end

      context 'self.find' do
        let(:game_mode) { VCR.use_cassette('game_modes/find') { subject.find(1) } }

        it 'returns a game_mode' do
          expect(game_mode).to be_a Igdb::GameMode
        end

        it 'returns the correct game_mode' do
          expect(game_mode.name).to eq('Single player')
        end
      end
    end
  end
end

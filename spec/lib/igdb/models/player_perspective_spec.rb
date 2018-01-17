require 'spec_helper'

describe Igdb::PlayerPerspective do
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
        let(:player_perspective) { VCR.use_cassette('player_perspectives/meta') { subject.meta } }

        it 'return the fields of player_perspective' do
          expect(player_perspective).to be_a Array
        end
      end

      context 'self.count' do
        let(:player_perspective) { VCR.use_cassette('player_perspectives/count') { subject.count } }

        it 'return the number of player perspectives in the database' do
          expect(player_perspective).to be_a Integer
        end
      end

      context 'self.find' do
        let(:player_perspective) { VCR.use_cassette('player_perspectives/find') { subject.find(1) } }

        it 'returns a player_perspective' do
          expect(player_perspective).to be_a Igdb::PlayerPerspective
        end

        it 'returns the correct player_perspective' do
          expect(player_perspective.name).to eq('First person')
        end
      end
    end
  end
end

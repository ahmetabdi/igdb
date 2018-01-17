require 'spec_helper'

describe Igdb::Feed do
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
        let(:feed) { VCR.use_cassette('feeds/meta') { subject.meta } }

        it 'return the fields of feed' do
          expect(feed).to be_a Array
        end
      end

      context 'self.count' do
        let(:feed) { VCR.use_cassette('feeds/count') { subject.count } }

        it 'return the number of feeds in the database' do
          expect(feed).to be_a Integer
        end
      end

      context 'self.find' do
        let(:feed) { VCR.use_cassette('feeds/find') { subject.find(14_428) } }

        it 'returns a feed' do
          expect(feed).to be_a Igdb::Feed
        end

        it 'returns the correct feed' do
          expect(feed.url).to eq('https://www.igdb.com/feed/b4s')
        end
      end
    end
  end
end

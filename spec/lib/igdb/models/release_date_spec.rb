require 'spec_helper'

describe Igdb::ReleaseDate do
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
        let(:release_date) { VCR.use_cassette('release_dates/meta') { subject.meta } }

        it 'return the fields of release_date' do
          expect(release_date).to be_a Array
        end
      end

      context 'self.count' do
        let(:release_date) { VCR.use_cassette('release_dates/count') { subject.count } }

        it 'return the number of release dates in the database' do
          expect(release_date).to be_a Integer
        end
      end

      context 'self.find' do
        let(:release_date) { VCR.use_cassette('release_dates/find') { subject.find(19_271) } }

        it 'returns a release_date' do
          expect(release_date).to be_a Igdb::ReleaseDate
        end

        it 'returns the correct release_date' do
          expect(release_date.platform).to be_a Integer
        end
      end
    end
  end
end

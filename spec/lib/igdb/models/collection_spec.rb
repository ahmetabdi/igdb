require 'spec_helper'

describe Igdb::Collection do
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
        let(:collection) { VCR.use_cassette('collections/meta') { subject.meta } }

        it 'return the fields of collection' do
          expect(collection).to be_a Array
        end
      end

      context 'self.count' do
        let(:collection) { VCR.use_cassette('collections/count') { subject.count } }

        it 'return the number of collections in the database' do
          expect(collection).to be_a Integer
        end
      end

      context 'self.find' do
        let(:collection) { VCR.use_cassette('collections/find') { subject.find(1) } }

        it 'returns a collection' do
          expect(collection).to be_a Igdb::Collection
        end

        it 'returns the correct collection' do
          expect(collection.name).to eq('Bioshock')
        end
      end
    end
  end
end

require 'spec_helper'

describe Igdb::Franchise do
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
        let(:franchise) { VCR.use_cassette('franchises/meta') { subject.meta } }

        it 'return the fields of franchise' do
          expect(franchise).to be_a Array
        end
      end

      context 'self.count' do
        let(:franchise) { VCR.use_cassette('franchises/count') { subject.count } }

        it 'return the number of franchises in the database' do
          expect(franchise).to be_a Integer
        end
      end

      context 'self.find' do
        let(:franchise) { VCR.use_cassette('franchises/find') { subject.find(1) } }

        it 'returns a franchise' do
          expect(franchise).to be_a Igdb::Franchise
        end

        it 'returns the correct franchise' do
          expect(franchise.name).to eq('Star Wars')
        end
      end
    end
  end
end

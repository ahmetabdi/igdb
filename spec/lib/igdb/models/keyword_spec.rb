require 'spec_helper'

describe Igdb::Keyword do
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
        let(:keyword) { VCR.use_cassette('keywords/meta') { subject.meta } }

        it 'return the fields of keyword' do
          expect(keyword).to be_a Array
        end
      end

      context 'self.count' do
        let(:keyword) { VCR.use_cassette('keywords/count') { subject.count } }

        it 'return the number of keywords in the database' do
          expect(keyword).to be_a Integer
        end
      end

      context 'self.find' do
        let(:keyword) { VCR.use_cassette('keywords/find') { subject.find(3) } }

        it 'returns a keyword' do
          expect(keyword).to be_a Igdb::Keyword
        end

        it 'returns the correct keyword' do
          expect(keyword.name).to eq('aliens')
        end
      end
    end
  end
end

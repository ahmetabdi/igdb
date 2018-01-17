require 'spec_helper'

describe Igdb::Credits do
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
        let(:credits) { VCR.use_cassette('credits/meta') { subject.meta } }

        it 'return the fields of credits' do
          expect(credits).to be_a Array
        end
      end

      context 'self.count' do
        let(:credits) { VCR.use_cassette('credits/count') { subject.count } }

        it 'return the number of credits in the database' do
          expect(credits).to be_a Integer
        end
      end

      context 'self.find' do
        let(:credits) { VCR.use_cassette('credits/find') { subject.find(1_342_178_444) } }

        it 'returns a credits' do
          expect(credits).to be_a Igdb::Credits
        end

        it 'returns the correct credits' do
          expect(credits.name).to eq('Production Babies')
        end
      end
    end
  end
end

require 'spec_helper'

describe Igdb::Platform do
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
        let(:platform) { VCR.use_cassette('platforms/meta') { subject.meta } }

        it 'return the fields of platform' do
          expect(platform).to be_a Array
        end
      end

      context 'self.count' do
        let(:platform) { VCR.use_cassette('platforms/count') { subject.count } }

        it 'return the number of platforms in the database' do
          expect(platform).to be_a Integer
        end
      end

      context 'self.find' do
        let(:platform) { VCR.use_cassette('platforms/find') { subject.find(3) } }

        it 'returns a platform' do
          expect(platform).to be_a Igdb::Platform
        end

        it 'returns the correct platform' do
          expect(platform.name).to eq('Linux')
        end
      end
    end
  end
end

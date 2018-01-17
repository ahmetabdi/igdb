require 'spec_helper'

describe Igdb::PulseSource do
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
        let(:pulse_source) { VCR.use_cassette('pulse_sources/meta') { subject.meta } }

        it 'return the fields of pulse_source' do
          expect(pulse_source).to be_a Array
        end
      end

      context 'self.count' do
        let(:pulse_source) { VCR.use_cassette('pulse_sources/count') { subject.count } }

        it 'return the number of pulse sources in the database' do
          expect(pulse_source).to be_a Integer
        end
      end

      context 'self.find' do
        let(:pulse_source) { VCR.use_cassette('pulse_sources/find') { subject.find(1) } }

        it 'returns a pulse_source' do
          expect(pulse_source).to be_a Igdb::PulseSource
        end

        it 'returns the correct pulse_source' do
          expect(pulse_source.name).to eq('Kotaku')
        end
      end
    end
  end
end

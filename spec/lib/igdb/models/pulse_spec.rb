require 'spec_helper'

describe Igdb::Pulse do
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
        let(:pulse) { VCR.use_cassette('pulses/meta') { subject.meta } }

        it 'return the fields of pulse' do
          expect(pulse).to be_a Array
        end
      end

      context 'self.count' do
        let(:pulse) { VCR.use_cassette('pulses/count') { subject.count } }

        it 'return the number of pulses in the database' do
          expect(pulse).to be_a Integer
        end
      end

      context 'self.find' do
        let(:pulse) { VCR.use_cassette('pulses/find') { subject.find(142_583) } }

        it 'returns a pulse' do
          expect(pulse).to be_a Igdb::Pulse
        end

        it 'returns the correct pulse' do
          expect(pulse.title).to eq('Bloodstained: Ritual of the Night Receives E3 Trailer, New Boss Showcased')
        end
      end
    end
  end
end

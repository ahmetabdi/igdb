require 'spec_helper'

describe Igdb::PulseGroup do
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
        let(:pulse_group) { VCR.use_cassette('pulse_groups/meta') { subject.meta } }

        it 'return the fields of pulse_group' do
          expect(pulse_group).to be_a Array
        end
      end

      context 'self.count' do
        let(:pulse_group) { VCR.use_cassette('pulse_groups/count') { subject.count } }

        it 'return the number of pulse groups in the database' do
          expect(pulse_group).to be_a Integer
        end
      end

      context 'self.find' do
        let(:pulse_group) { VCR.use_cassette('pulse_groups/find') { subject.find(31) } }

        it 'returns a pulse_group' do
          expect(pulse_group).to be_a Igdb::PulseGroup
        end

        it 'returns the correct pulse_group' do
          expect(pulse_group.name).to eq("Hellblade: Senua's Sacrifice")
        end
      end
    end
  end
end

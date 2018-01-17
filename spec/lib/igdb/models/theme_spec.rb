require 'spec_helper'

describe Igdb::Theme do
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
        let(:theme) { VCR.use_cassette('themes/meta') { subject.meta } }

        it 'return the fields of theme' do
          expect(theme).to be_a Array
        end
      end

      context 'self.count' do
        let(:theme) { VCR.use_cassette('themes/count') { subject.count } }

        it 'return the number of themes in the database' do
          expect(theme).to be_a Integer
        end
      end

      context 'self.find' do
        let(:theme) { VCR.use_cassette('themes/find') { subject.find(1) } }

        it 'returns a theme' do
          expect(theme).to be_a Igdb::Theme
        end

        it 'returns the correct theme' do
          expect(theme.name).to eq('Action')
        end
      end
    end
  end
end

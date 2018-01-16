require 'spec_helper'

describe Igdb::Page do
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
        let(:page) { VCR.use_cassette('pages/meta') { subject.meta } }

        it 'return the fields of page' do
          expect(page).to be_a Array
        end
      end

      context 'self.count' do
        let(:page) { VCR.use_cassette('pages/count') { subject.count } }

        it 'return the number of pages in the database' do
          expect(page).to be_a Integer
        end
      end

      context 'self.find' do
        let(:page) { VCR.use_cassette('pages/find') { subject.find(1) } }

        it 'returns a page' do
          expect(page).to be_a Igdb::Page
        end

        it 'returns the correct page' do
          expect(page.name).to eq('FaZe Rain')
        end
      end
    end
  end
end

require 'spec_helper'

describe Igdb::Title do
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
        let(:title) { VCR.use_cassette('titles/meta') { subject.meta } }

        it 'return the fields of title' do
          expect(title).to be_a Array
        end
      end

      context 'self.count' do
        let(:title) { VCR.use_cassette('titles/count') { subject.count } }

        it 'return the number of titles in the database' do
          expect(title).to be_a Integer
        end
      end

      context 'self.find' do
        let(:title) { VCR.use_cassette('titles/find') { subject.find(1) } }

        it 'returns a title' do
          expect(title).to be_a Igdb::Title
        end

        it 'returns the correct title' do
          expect(title.name).to eq('Project Director')
        end
      end
    end
  end
end

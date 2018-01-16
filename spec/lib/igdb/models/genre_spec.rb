require 'spec_helper'

describe Igdb::Genre do
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
        let(:genre) { VCR.use_cassette('genres/meta') { subject.meta } }

        it 'return the fields of genre' do
          expect(genre).to be_a Array
        end
      end

      context 'self.count' do
        let(:genre) { VCR.use_cassette('genres/count') { subject.count } }

        it 'return the number of genres in the database' do
          expect(genre).to be_a Integer
        end
      end

      context 'self.find' do
        let(:genre) { VCR.use_cassette('genres/find') { subject.find(4) } }

        it 'returns a genre' do
          expect(genre).to be_a Igdb::Genre
        end

        it 'returns the correct genre' do
          expect(genre.name).to eq('Fighting')
        end
      end
    end
  end
end

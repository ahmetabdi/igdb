require 'spec_helper'

describe Igdb::Character do
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
        let(:character) { VCR.use_cassette('characters/meta') { subject.meta } }

        it 'return the fields of character' do
          expect(character).to be_a Array
        end
      end

      context 'self.count' do
        let(:character) { VCR.use_cassette('characters/count') { subject.count } }

        it 'return the number of characters in the database' do
          expect(character).to be_a Integer
        end
      end

      context 'self.find' do
        let(:character) { VCR.use_cassette('characters/find') { subject.find(1) } }

        it 'returns a character' do
          expect(character).to be_a Igdb::Character
        end

        it 'returns the correct character' do
          expect(character.name).to eq('Urdnot Wrex')
        end
      end
    end
  end
end

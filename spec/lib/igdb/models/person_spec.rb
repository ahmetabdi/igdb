require 'spec_helper'

describe Igdb::Person do
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
        let(:person) { VCR.use_cassette('people/meta') { subject.meta } }

        it 'return the fields of person' do
          expect(person).to be_a Array
        end
      end

      context 'self.count' do
        let(:person) { VCR.use_cassette('people/count') { subject.count } }

        it 'return the number of people in the database' do
          expect(person).to be_a Integer
        end
      end

      context 'self.find' do
        let(:person) { VCR.use_cassette('people/find') { subject.find(1) } }

        it 'returns a person' do
          expect(person).to be_a Igdb::Person
        end

        it 'returns the correct person' do
          expect(person.name).to eq('Casey Hudson')
        end
      end
    end
  end
end

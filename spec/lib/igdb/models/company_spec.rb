require 'spec_helper'

describe Igdb::Company do
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
        let(:company) { VCR.use_cassette('companies/meta') { subject.meta } }

        it 'return the fields of company' do
          expect(company).to be_a Array
        end
      end

      context 'self.count' do
        let(:company) { VCR.use_cassette('companies/count') { subject.count } }

        it 'return the number of companies in the database' do
          expect(company).to be_a Integer
        end
      end

      context 'self.find' do
        let(:company) { VCR.use_cassette('companies/find') { subject.find(2000) } }

        it 'returns a company' do
          expect(company).to be_a Igdb::Company
        end

        it 'returns the correct company' do
          expect(company.name).to eq('Cat Daddy Games')
        end
      end
    end
  end
end

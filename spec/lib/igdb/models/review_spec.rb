require 'spec_helper'

describe Igdb::Review do
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
        let(:review) { VCR.use_cassette('reviews/meta') { subject.meta } }

        it 'return the fields of review' do
          expect(review).to be_a Array
        end
      end

      context 'self.count' do
        let(:review) { VCR.use_cassette('reviews/count') { subject.count } }

        it 'return the number of reviews in the database' do
          expect(review).to be_a Integer
        end
      end

      context 'self.find' do
        let(:review) { VCR.use_cassette('reviews/find') { subject.find(2234) } }

        it 'returns a review' do
          expect(review).to be_a Igdb::Review
        end

        it 'returns the correct review' do
          expect(review.game).to be_a Integer
        end
      end
    end
  end
end

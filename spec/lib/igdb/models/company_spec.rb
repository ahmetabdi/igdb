require 'spec_helper'

describe Igdb::Company do
  subject { described_class }

  before do
    Igdb.connect ENV["IGDB_API_KEY"]
  end

  describe "public class methods" do
    context "responds to its methods" do
      it { expect(subject).to respond_to(:count) }
      it { expect(subject).to respond_to(:find) }
    end

    context "executes methods correctly" do
      context "self.count" do
        let(:response) {
          VCR.use_cassette("companies/count") {
            subject.count
          }
        }

        it "returns the number of companies in the database" do
          expect(response).to eq(14_752)
        end
      end

      context "self.find" do
        let(:response) {
          VCR.use_cassette("companies/find") {
            subject.find(2_000)
          }
        }

        it "returns a company" do
          expect(response).to be_a Igdb::Company
        end
      end
    end
  end
end

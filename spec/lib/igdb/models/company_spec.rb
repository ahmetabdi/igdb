require 'spec_helper'

describe Igdb::Company do
  subject { described_class }

  before do
    Igdb.connect('egBf')
  end

  describe "public class methods" do
    context "responds to its methods" do
      it { expect(subject).to respond_to(:meta) }
      it { expect(subject).to respond_to(:find) }
    end

    context "executes methods correctly" do
      context "self.meta" do
        let(:company) { VCR.use_cassette("companies/meta") { subject.meta } }

        it "return the number of games in the database" do
          expect(company).to eq(5914)
        end
      end

      context "self.find" do
        let(:company) { VCR.use_cassette("companies/find") { subject.find(2000) } }

        it "returns a company" do
          expect(company).to be_a Igdb::Company
        end
      end
    end
  end
end

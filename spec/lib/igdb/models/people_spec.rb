require 'spec_helper'

describe Igdb::Person do
  subject { described_class }

  before do
    Igdb.connect ENV["IGDB_API_KEY"]
  end

  describe "public class methods" do
    context "responds to its methods" do
      it { expect(subject).to respond_to(:count) }
      it { expect(subject).to respond_to(:find) }
      it { expect(subject).to respond_to(:search) }
      it { expect(subject).to respond_to(:all) }
    end

    context "executes methods correctly" do
      context "self.count" do
        let(:response) {
          VCR.use_cassette("people/count") {
            subject.count
          }
        }

        it "returns the number of games in the database" do
          expect(response).to eq(149_730)
        end
      end

      context "self.find" do
        let(:response) {
          VCR.use_cassette("people/find") {
            subject.find(2_000)
          }
        }

        it "returns a person" do
          expect(response).to be_a Igdb::Person
        end
      end

      context "self.search" do
        let(:response) {
          VCR.use_cassette("people/search") {
            subject.search(query: "batman")
          }
        }

        it "returns a collection of people" do
          expect(response).to be_a Array
          expect(response).not_to be_empty
          expect(response.first).to be_a Igdb::Person
        end
      end

      context "self.all" do
        let(:response) {
          VCR.use_cassette("people/all") {
            subject.all
          }
        }

        let(:response_with_limit) {
          VCR.use_cassette("people/all-limit") {
            subject.all(limit: 5)
          }
        }

        let(:response_with_limit_and_offset) {
          VCR.use_cassette("people/all-limit-and-offset") {
            subject.all(limit: 5, offset: 2)
          }
        }

        it "returns a collection of people" do
          expect(response).to be_a Array
          expect(response).not_to be_empty
          expect(response.first).to be_a Igdb::Person
        end

        it "returns a limit" do
          expect(response_with_limit).to be_a Array
          expect(response_with_limit.length).to eq(5)
        end

        it "returns a offset" do
          expect(response_with_limit_and_offset).to be_a Array
          expect(response_with_limit_and_offset.length).to eq(5)
        end

      end
    end
  end
end

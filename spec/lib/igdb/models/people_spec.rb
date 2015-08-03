require 'spec_helper'

describe Igdb::Person do
  subject { described_class }

  before do
    Igdb.connect('egBf')
  end

  describe "public class methods" do
    context "responds to its methods" do
      it { expect(subject).to respond_to(:meta) }
      it { expect(subject).to respond_to(:find) }
      it { expect(subject).to respond_to(:all) }
    end

    context "executes methods correctly" do
      context "self.meta" do
        let(:people) { VCR.use_cassette("people/meta") { subject.meta } }

        it "return the number of games in the database" do
          expect(people).to eq(82205)
        end
      end

      context "self.find" do
        let(:people) { VCR.use_cassette("people/find") { subject.find(2000) } }

        it "returns a people" do
          expect(people).to be_a Igdb::Person
        end
      end

      context "self.all" do
        let(:people) { VCR.use_cassette("people/all") { subject.all } }
        let(:game_with_limit) { VCR.use_cassette("people/all-limit") { subject.all(limit: 5) } }
        let(:game_with_limit_and_offset) { VCR.use_cassette("people/all-limit-and-offset") { subject.all(limit: 5, offset: 2) } }

        it "returns a list of games" do
          expect(people).to be_a Array
          expect(people).not_to be_empty
          expect(people.first).to be_a Igdb::Person
        end

        it "returns a limit" do
          expect(game_with_limit).to be_a Array
          expect(game_with_limit.length).to eq(5)
        end

        it "returns a offset" do
          expect(game_with_limit_and_offset).to be_a Array
          expect(game_with_limit_and_offset.length).to eq(5)
        end

      end
    end
  end
end

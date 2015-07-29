require 'spec_helper'

describe Igdb::Game do
  subject { described_class }

  describe "public class methods" do
    context "responds to its methods" do
      it { expect(subject).to respond_to(:find) }
      it { expect(subject).to respond_to(:search) }
    end

    context "executes methods correctly" do
      context "self.find" do
        let(:game) { VCR.use_cassette("game/find") { subject.find(2000) } }

        it "returns a game" do
          expect(game).to be_a Igdb::Game
        end
      end

      context "self.search" do
        let(:game) { VCR.use_cassette("game/search") { subject.search(query: 'batman') } }

        it "returns a group of game results" do
          expect(game).to be_a Array
          expect(game).not_to be_empty
        end
      end
    end
  end
end

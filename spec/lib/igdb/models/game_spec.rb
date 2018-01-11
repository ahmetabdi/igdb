require 'spec_helper'

describe Igdb::Game do
  subject { described_class }

  before do
    Igdb.connect('egBf')
  end

  describe "public class methods" do
    context "responds to its methods" do
      it { expect(subject).to respond_to(:meta) }
      it { expect(subject).to respond_to(:count) }
      it { expect(subject).to respond_to(:find) }
      it { expect(subject).to respond_to(:search) }
      it { expect(subject).to respond_to(:all) }
    end

    context "executes methods correctly" do
      context "self.meta" do
        let(:game) { VCR.use_cassette("game/meta") { subject.meta } }

        it "return the fields of game" do
          puts game
          expect(game).to eq(11321)
        end
      end
      
      context "self.count" do
        let(:game) { VCR.use_cassette("game/count") { subject.count } }

        it "return the number of games in the database" do
          expect(game).to be >= 78945
        end
      end

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
          expect(game.first).to be_a Igdb::Game
        end
      end

      context "self.all" do
        let(:game) { VCR.use_cassette("game/all") { subject.all } }
        let(:game_with_limit) { VCR.use_cassette("game/all-limit") { subject.all(limit: 5) } }
        let(:game_with_limit_and_offset) { VCR.use_cassette("game/all-limit-and-offset") { subject.all(limit: 5, offset: 2) } }

        it "returns a list of games" do
          expect(game).to be_a Array
          expect(game).not_to be_empty
          expect(game.first).to be_a Igdb::Game
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

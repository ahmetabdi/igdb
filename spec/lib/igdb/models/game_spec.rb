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
        it "returns a game"
      end
      context "self.search" do
        it "returns a group of game results"
      end
    end
  end

end

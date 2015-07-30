require 'spec_helper'

describe Igdb::Requester do
  subject { described_class }

  describe ".get" do
    context "without a json response" do
      it "returns an JsonParseError" do
        expect(subject.get('http://www.google.com')).to be_a Igdb::Exception::JsonParseError
      end
    end
    context "without a valid URL" do
      it "return an error" do
        allow(subject).to receive(:get).with('http://www.google.com').and_return(Igdb::Exception::Api.new('RestClient Error'))
        expect(subject.get('http://www.google.com')).to be_a(Igdb::Exception::Api)
      end
    end
  end

end

require 'spec_helper'

describe Igdb::Requester do
  subject { described_class }

  describe ".get" do
    
    let (:test_url)    { RSpec.configuration.test_url }

    context "without a valid URL" do
      it "return an error" do
        allow(subject).to receive(:get).with(test_url).and_raise(Igdb::Exception::Api.new("RestClient Error"))
        expect{subject.get(test_url)}.to raise_error(Igdb::Exception::Api, "RestClient Error")
      end
    end

    context "without a json response" do
      it "returns an JsonParseError" do
        allow(subject).to receive(:get).with(test_url).and_raise(Igdb::Exception::JsonParseError.new("Parse Error"))
        expect{subject.get(test_url)}.to raise_error(Igdb::Exception::JsonParseError, "Parse Error")
      end
    end

  end
end

require 'spec_helper'

describe Igdb do
  it 'has a version number' do
    expect(Igdb::VERSION).not_to be nil
  end

  describe ".connect" do
    subject { VCR.use_cassette("connect") { Igdb.connect(api_key) } }
    let(:api_key) { "egBf-guz6Z8ZIMYw0GMykId-V0-OumqBwy988YFyq2E" }

    it "should start the configuration workflow" do
      subject
    end

    it "should have a base url" do
      expect(subject.base_url).to eq('https://www.igdb.com/api/v1/')
    end

    it "should have a API key" do
      expect(subject.api_key).to eq('egBf-guz6Z8ZIMYw0GMykId-V0-OumqBwy988YFyq2E')
    end

    it "should have a API version" do
      expect(subject.version).to eq(1)
    end
  end
end

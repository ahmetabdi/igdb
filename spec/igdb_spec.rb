require 'spec_helper'

describe Igdb do
  it 'has a version number' do
    expect(Igdb::VERSION).not_to be nil
  end

  describe '.connect' do
    subject { Class.new(Igdb::Configuration::Api).instance }
    let(:api_key) { 'egBf' }

    it 'should have a default url' do
      expect(subject.api_url).to eq(RSpec.configuration.default_api_url)
    end

    it 'should set an API url' do
      subject.set_api_url RSpec.configuration.test_url
      expect(subject.api_url).to eq(RSpec.configuration.test_url)
    end

    it 'should set an API key' do
      subject.connect api_key
      expect(subject.api_key).to eq(api_key)
    end

    it 'should have a API version' do
      expect(subject.version).to eq(1)
    end
  end
end

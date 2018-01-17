require 'spec_helper'

describe Igdb do
  it 'has a version number' do
    expect(Igdb::VERSION).not_to be nil
  end

  describe '.connect' do
    subject { Igdb.connect(api_key) }
    let(:api_key) { 'egBf' }

    it 'should start the configuration workflow' do
      subject
    end

    it 'should have a base url' do
      expect(subject.base_url).to eq('https://api-2445582011268.apicast.io')
    end

    it 'should have a API key' do
      expect(subject.api_key).to eq('egBf')
    end

    it 'should have a API version' do
      expect(subject.version).to eq(1)
    end
  end
end

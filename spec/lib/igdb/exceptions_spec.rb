require 'spec_helper'

describe Igdb::Exception::Base do
  subject { described_class.new('Some message') }

  describe 'initialize' do
    context 'executes super' do
      it 'returns a message' do
        expect(subject).to be_a Igdb::Exception::Base
        expect(subject.message).to eq('Some message')
      end
    end
  end
end

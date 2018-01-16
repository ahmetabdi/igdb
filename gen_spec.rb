require 'active_support/inflector'

files = Dir.entries('lib/igdb/models').sort

for file in files
    unless ['.', '..', 'company', 'game', 'people'].include? file
        short = file.slice(0, file.length-3)
        class_name = short.classify
        pluralized = short.pluralize

        content = 
        "require 'spec_helper'
        
describe Igdb::#{class_name} do
  subject { described_class }

  before do
    Igdb.connect('070702fa7336d87a8cdd509beb23e2f4')
  end

  describe 'public class methods' do
    context 'responds to its methods' do
      it { expect(subject).to respond_to(:meta) }
      it { expect(subject).to respond_to(:count) }
      it { expect(subject).to respond_to(:find) }
      it { expect(subject).to respond_to(:search) }
      it { expect(subject).to respond_to(:all) }
    end

    context 'executes methods correctly' do
      context 'self.meta' do
        let(:#{short}) { VCR.use_cassette('#{pluralized}/meta') { subject.meta } }

        it 'return the fields of #{short}' do
          expect(#{short}).to be_a Array
          expect(#{short}.length).to eq(23)
        end
      end
      
      context 'self.count' do
        let(:#{short}) { VCR.use_cassette('#{pluralized}/count') { subject.count } }
        
        it 'return the number of companies in the database' do
          expect(#{short}).to eq(13798)
        end
      end

      context 'self.find' do
        let(:company) { VCR.use_cassette('#{pluralized}/find') { subject.find(2000) } }

        it 'returns a #{short}' do
          expect(company).to be_a Igdb::#{class_name}
        end
        
        it 'returns the correct #{short}' do
          expect(#{short}.name).to eq('Cat Daddy Games')
        end
      end
    end
  end
end"
    
        File.open("spec/lib/igdb/models/#{short}_spec.rb", 'w') { |file| file.write(content) }
    end
end
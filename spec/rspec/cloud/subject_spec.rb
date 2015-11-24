require 'spec_helper'

describe RSpec::Cloud::Core::Subject do
  context 'with a subject value' do
    subject do
      instance = RSpec::Cloud::Core::Subject.new
      instance.value 'value'
      instance
    end

    it 'should equal "value"' do
      expect(subject.value).to eq 'value'
    end
  end

  context 'with no subject value' do
    subject do
      instance = RSpec::Cloud::Core::Subject.new
      instance.value nil
      instance
    end

    it 'should equal "nil"' do
      expect(subject.value).to eq nil
    end
  end
end

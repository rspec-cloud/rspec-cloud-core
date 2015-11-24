require 'spec_helper'

describe 'RSpec::Matchers.be_equal_to' do
  context 'with a string' do
    subject { 'teststring' }

    it { should be_equal_to 'teststring' }

    it { should have_value 'teststring' }

    it { should_not be_nil }
  end
end

describe 'RSpec::Matchers.have_key' do
  context 'with a Hash' do
    subject do
      { 'key1' => 'value1', 'key2' => 'value2' }
    end

    it { should have_key('key1') }

    it { should have_key('key1').with_value('value1') }

    it { should have_key('key2') }

    it { should have_key('key2').with_value('value2') }

    it { should have(2).entries }
  end
end

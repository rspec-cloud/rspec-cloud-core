# frozen_string_literal: true

require 'spec_helper'

describe 1234 do
  it { should have_digits(4) }
end

describe 'test_string' do
  it { should_not be_integer }

  it 'should be converted to Camel Case' do
    expect(subject.to_camel_case).to eq 'TestString'
  end

  it 'should be converted to Camel Case and back to Snake Case' do
    expect(subject.to_camel_case.to_snake_case).to eq 'test_string'
  end

  it 'should be converted to Camel Back' do
    expect(subject.to_camel_back).to eq 'testString'
  end
end

describe '+1' do
  it { should be_integer }
end

describe '-1' do
  it { should be_integer }
end

describe 'true' do
  it 'should be a TrueClass object' do
    expect(subject.to_bool).to be_truthy
  end
end

describe 'false' do
  it 'should be a FalseClass object' do
    expect(subject.to_bool).to be_falsey
  end
end

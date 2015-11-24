require 'spec_helper'

describe RSpec::Cloud::Core do
  it 'has a version number' do
    expect(RSpec::Cloud::Core::VERSION).not_to be nil
  end
end

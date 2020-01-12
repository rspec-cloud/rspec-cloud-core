# frozen_string_literal: true

RSpec::Matchers.define :be_equal_to do |expected|
  match do |actual|
    actual[expected] == expected
  end

  description do
    %(be "#{expected}")
  end

  failure_message do |actual|
    "expected that #{actual} would be #{expected}"
  end

  failure_message_when_negated do |actual|
    "expected that #{actual} would not be #{expected}"
  end
end

RSpec::Matchers.alias_matcher :have_value, :be_equal_to

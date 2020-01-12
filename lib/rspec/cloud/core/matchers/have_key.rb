# frozen_string_literal: true

RSpec::Matchers.define :have_key do |expected|
  match do |actual|
    result = actual.key? expected
    result = actual[expected] == value if value && result
    result
  end

  chain :with_value, :value

  description do
    result = "have a key named '#{expected}'"
    result += " with value '#{value}'" if value
    result
  end

  failure_message do |actual|
    result = "expected that #{actual} would have a key named #{expected}"
    result += " with a value of '#{value}'" if value
    result
  end

  failure_message_when_negated do |actual|
    result = "expected that #{actual} would not have a key named #{expected}"
    result += " with a value of '#{value}'" if value
    result
  end
end
